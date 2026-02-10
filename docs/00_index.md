---
menu: Main
---
<style>
  .content figure {
    max-width: 600px;
  }
</style>

**Breadboard-friendly development boards with dedicated USB device connectivity for STM32 microcontrollers.**

Nucleo-32 boards have a problem: the only USB port is consumed by the built-in ST-Link programmer, leaving no independent USB connection for the microcontroller's device peripheral. These boards fix that -- a dedicated USB Mini-B connector wired straight to the MCU, separate from the SWD programmer, so you can develop USB firmware the way it should work.

## Why These Boards

- **Independent USB Mini-B** -- dedicated device port, not shared with the programmer
- **USB DFU bootloader** -- flash firmware over USB, no programmer required
- **Breadboard-compatible** -- 2.54 mm pitch headers, fits right into your prototyping setup
- **Mostly through-hole** -- designed for hand soldering with PTH components
- **SWD header** -- connect your hardware debugger when you need it
- **On-board power and protection** -- 5 V to 3.3 V LDO from USB, ESD protection on data lines

## Three Variants

Pick the microcontroller that fits your project.

### STM32F0

![STM32F0 board render](@@/p/stm32-usbd-devboards/kicad/stm32f0-usbd-devboard_20250412_720.png)
[STM32F0](10_stm32f0.md) board render

Cortex-M0 at 48 MHz. Crystal-free USB via HSI48 self-calibrated by the host -- solder two bridges and you get the crystal pins back as GPIO. The simplest option for straightforward USB projects.

[STM32F0 variant details](10_stm32f0.md)

### STM32G4

![STM32G4 board render](@@/p/stm32-usbd-devboards/kicad/stm32g4-usbd-devboard_20250412_720.png)
[STM32G4](20_stm32g4.md) board render

Cortex-M4F at 170 MHz with FPU and SWO trace output. Crystal-free USB via HSI48 self-calibrated by the host is possible, but the crystal is recommended. You get significantly more processing power and up to 128 KB of flash. The choice when your USB device needs to do real computation or deal with analog signals.

[STM32G4 variant details](20_stm32g4.md)

### STM32C0

![STM32C0 board render](@@/p/stm32-usbd-devboards/kicad/stm32c0-usbd-devboard_20251110_720.png)
[STM32C0](30_stm32c0.md) board render

Cortex-M0+ at 48 MHz. Crystal-free USB like the F0 variant, with 64 KB flash, 24 KB RAM, and the largest pin count of the three -- 28 GPIO + power pins across 2x 1x14 headers.

[STM32C0 variant details](30_stm32c0.md)

## Get Started

- **[Build manual](@@/hardware/build-manual/)** -- assembly and soldering instructions
- **[cmake-cmsis-stm32](@@/p/cmake-cmsis-stm32/)** -- CMake module for bare-metal STM32 firmware development
- **[Source files on GitHub](https://github.com/rafaelmartins/stm32-usbd-devboards)** -- KiCad schematics, PCB layouts, and Gerber files

Hardware released under [CERN-OHL-S-2.0](https://github.com/rafaelmartins/stm32-usbd-devboards/blob/main/LICENSE).
