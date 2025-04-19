# stm32-usbd-devboards

Development boards designed for USB-related projects based on STM32F0 and STM32G4 microcontroller series.


## Why?

There are plenty of `STM32 Nucleo` boards available on the market, at very reasonable prices. The `Nucleo-32` boards only have one `USB` connector, which is used by the built-in `STLINK` programmer. They don’t have any `USB` infrastructure for the main microcontroller’s USB FS device peripheral. These boards address this issue in a straightforward and cost-effective manner.


## Design choices

- The boards use small microcontrollers (`LQFP-32`). These are ideal for bare-metal projects.
- The boards are designed to fit in a breadboard and are primarily based on `PTH` components.
- The boards have `SWD` headers and a jumper that activates the microcontroller's `DFU` bootloader.


## STM32F0 Variant

### Revision [20250412](https://github.com/rafaelmartins/stm32-usbd-devboards/tree/f0/20250412/pcb/stm32f0-usbd-devboard)

- [Interactive Bill of Materials](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20250412/stm32f0-usbd-devboard.html)
- [Schematics](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20250412/stm32f0-usbd-devboard.pdf)
- [Gerber files](https://github.com/rafaelmartins/stm32-usbd-devboards/raw/refs/tags/f0/20250412/pcb/stm32f0-usbd-devboard/gerber/stm32f0-usbd-devboard_rev20250412.zip)
- Supported microcontrollers: `STM32F042K4T6`, `STM32F042K6T6`.
- Supports `HSE` using a `HC49` crystal.
- The `JP1` solder bridge connects the GPIO `PF1` to the board pin `F1`, and the `JP2` solder bridge connects the GPIO `PF0` to the board pin `F0`. These connections should not be made if a crystal is used as `HSE`.
- The current version of the board has undergone a modification in its pinout. Previously, pins `F1` and `F0` were interchanged, and they are now unconnected.

![3D Render](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20250412/stm32f0-usbd-devboard_1080.png)


## STM32G4 Variant

### Revision [20250412](https://github.com/rafaelmartins/stm32-usbd-devboards/tree/g4/20250412/pcb/stm32g4-usbd-devboard)

- [Interactive Bill of Materials](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250412/stm32g4-usbd-devboard.html)
- [Schematics](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250412/stm32g4-usbd-devboard.pdf)
- [Gerber files](https://github.com/rafaelmartins/stm32-usbd-devboards/raw/refs/tags/g4/20250412/pcb/stm32g4-usbd-devboard/gerber/stm32g4-usbd-devboard_rev20250412.zip)
- Supported microcontrollers: `STM32G431K6T6`, `STM32G431K8T6`, `STM32G431KBT6`.
- Supports `HSE` using a `HC49` crystal.
- `JP1` solder bridge skips the ferrite bead `FB1` if that part is not available, or the application is purely digital.
- Only minor fixes since the previous revision.

![3D Render](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250412/stm32g4-usbd-devboard_1080.png)


## Legacy Revisions

We have a [dedicated page](./legacy-revisions.md) containing information about all legacy revisions.


## License

The hardware is released under a [CERN-OHL-S-2.0 license](LICENSE).
