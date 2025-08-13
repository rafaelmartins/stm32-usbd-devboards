#!/bin/bash

NUM_ARGS=1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
source "${SCRIPT_DIR}/utils.sh"

OUTPUT_DIR="$(mkdir -p "${1}"; realpath "${1}")"

MYTMPDIR="$(mktemp -d)"
trap 'rm -rf -- "${MYTMPDIR}"' EXIT

"${SCRIPT_DIR}/checkout-pcb-revisions.sh" \
    "${MYTMPDIR}"

"${SCRIPT_DIR}/patch-render-config.sh"

cat > "${OUTPUT_DIR}/index.html" <<EOF
<html>
  <head><title>stm32-usbd-devboards</title></head>
  <body>
    <h1>stm32-usbd-devboards</h1>
    <hr>
EOF

pushd "${MYTMPDIR}" > /dev/null
for family in *; do
    if [[ ! -d "${family}" ]]; then
        continue
    fi

    NAME="stm32${family}-usbd-devboard"

    cat >> "${OUTPUT_DIR}/index.html" <<EOF
    <h2>${NAME}</h2>
EOF

    pushd "${family}" > /dev/null
    for revision in *; do
        if [[ ! -d "${revision}" ]]; then
            continue
        fi

        "${SCRIPT_DIR}/build-pcb-assets.sh" \
            "${family}" \
            "${revision}"

        mkdir \
            -p \
            "${OUTPUT_DIR}/${family}/${revision}"

        mv \
            -v \
            "${revision}/out"/* \
            "${OUTPUT_DIR}/${family}/${revision}/"

        cat >> "${OUTPUT_DIR}/index.html" <<EOF
    <h3>Revision: ${revision}</h3>
    <img src="./${family}/${revision}/${NAME}_480.png">
    <ul>
      <li><a href="./${family}/${revision}/${NAME}.html">Interactive Bill of Materials</a></li>
      <li><a href="./${family}/${revision}/${NAME}.pdf">Schematics</a></li>
      <li><a href="./${family}/${revision}/${NAME}_1080.png">3D Render (Front/Back, 1080p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}_720.png">3D Render (Front/Back, 720p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}_480.png">3D Render (Front/Back, 480p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-front_1080.png">3D Render (Front, 1080p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-front_720.png">3D Render (Front, 720p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-front_480.png">3D Render (Front, 480p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-back_1080.png">3D Render (Back, 1080p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-back_720.png">3D Render (Back, 720p)</a></li>
      <li><a href="./${family}/${revision}/${NAME}-back_720.png">3D Render (Back, 480p)</a></li>
    </ul>
EOF

    done
    popd > /dev/null

    cat >> "${OUTPUT_DIR}/index.html" <<EOF
    <hr>
EOF

done
popd > /dev/null

cat >> "${OUTPUT_DIR}/index.html" <<EOF
  </body>
</html>
EOF
