# stm32-usbd-devboards - Legacy revisions

> [!WARNING]
> The boards listed on this page are considered legacy. They can still be used as long as their limitations are respected and pinout differences to the latest revisions (if any) are taken into account.
>
> Please note that the symbols, examples and the documentation in general are based on the latest revisions.

## STM32F0 Variant

### Revision [20241212](https://github.com/rafaelmartins/stm32-usbd-devboards/tree/f0/20241212/pcb/stm32f0-usbd-devboard)

- [Interactive Bill of Materials](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20241212/stm32f0-usbd-devboard.html)
- [Schematics](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20241212/stm32f0-usbd-devboard.pdf)
- [Gerber files](https://github.com/rafaelmartins/stm32-usbd-devboards/raw/refs/tags/f0/20241212/pcb/stm32f0-usbd-devboard/gerber/stm32f0-usbd-devboard_rev20241212.zip)
- Supported microcontrollers: `STM32F042K4T6`, `STM32F042K6T6`.
- No `HSE` support.

![3D Render](https://rafaelmartins.github.io/stm32-usbd-devboards/f0/20241212/stm32f0-usbd-devboard_1080.png)


## STM32G4 Variant

### Revision [20250402](https://github.com/rafaelmartins/stm32-usbd-devboards/tree/g4/20250402/pcb/stm32g4-usbd-devboard)

- [Interactive Bill of Materials](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250402/stm32g4-usbd-devboard.html)
- [Schematics](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250402/stm32g4-usbd-devboard.pdf)
- [Gerber files](https://github.com/rafaelmartins/stm32-usbd-devboards/raw/refs/tags/g4/20250402/pcb/stm32g4-usbd-devboard/gerber/stm32g4-usbd-devboard_rev20250402.zip)
- Supported microcontrollers: `STM32G431K6T6`, `STM32G431K8T6`, `STM32G431KBT6`.
- Supports `HSE` using a `HC49` crystal.
- `JP1` solder bridge skips the ferrite bead `FB1` if that part is not available, or the application is purely digital.

![3D Render](https://rafaelmartins.github.io/stm32-usbd-devboards/g4/20250402/stm32g4-usbd-devboard_1080.png)
