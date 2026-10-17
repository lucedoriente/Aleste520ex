# Aleste 520EX — Western Through-Hole (THT) Edition (KiCad 9.0)

🌐 **Language / Lingua**: **🇬🇧 English** | [**🇮🇹 Leggi in Italiano (`README.it.md`)**](README.it.md)

---

Complete Western reproduction of the **1993 Soviet Aleste 520EX** Z80 personal computer (an Amstrad CPC 6128 & MSX2 compatible hybrid architecture designed by Patisonic in Omsk, Russia), completely redesigned in **KiCad 9.0** using **100% Western Through-Hole (THT)** components and a fully routed 2-layer PCB.

![PCB Top View](pcb_top.png)

---

## 1. Key Highlights of This Release

* **100% Western IC Conversion (`U1..U89`)**:
  * All Soviet logic, memory, and peripheral ICs have been converted to standard Western equivalents (`74LSxx`, `74HCxx`, `Z80CPU`, `8255`, `8253`, `8251A`, `8272`, `MC6845`, `AY-3-8910`, `MC146818P`, `HM50256P-20` / `41256`).
  * **Resolved `KR1802IR1` (`КР1802ИР1`)**: Replaced the scarce Soviet 24-pin 16×4 two-port register file ICs at `U60`, `U61`, `U82`, and `U83` with the Western **AMD `AM29705` (DIP-28)**, properly wiring its dual address buses (`A0..A3`, `B0..B3`), write strobes (`~WE1`, `~WE2`), transparent output latches (`~A-LO = GND`, `LE = VCC`), and open-collector outputs (`~OE-A`) for both the color palette (`U60`+`U61`) and keyboard/mapper subsystem (`U82`+`U83`).
  * Standardized all IC reference designators from Russian `D1..D89` to Western `U1..U89`.
* **100% Through-Hole (THT) Assembly**:
  * Every component (`U1..U89` DIP sockets, axial resistors, ceramic/electrolytic capacitors, diodes, transistors, crystals, trimmers, connectors) uses standard Through-Hole footprints for straightforward hand soldering and maintenance.
  * Both `F.Silkscreen` reference designators (`U1..U89`) and IC part numbers (`Value`, e.g., `74LS174`, `AM29705`, `Z80CPU`) are printed cleanly inside each DIP socket outline.
* **Fully Routed 2-Layer PCB (`286 × 220 mm`)**:
  * **0 ERC Errors** across the hierarchical schematic (`Aleste520v4.kicad_sch` + 6 sub-sheets).
  * **0 DRC Violations & 0 Unconnected Items** on the PCB (`Aleste520v4.kicad_pcb`).
  * **Signal Integrity & Power Distribution**:
    * Dedicated Netclasses for `Power` (`0.40 mm`), `Critical` high-speed clocks/strobes/analog RGB & audio (`0.25 mm` trace width with `0.28 mm` anti-crosstalk clearance), and `Default` (`0.25 mm` trace width, `0.20 mm` clearance).
    * Full `F.Cu` and `B.Cu` `GND` copper pours with **Thermal Reliefs** (`0.35 mm` spokes, `0.25 mm` gap) for easy hand soldering and over **3,670 GND stitching vias** (`0.6 mm / 0.3 mm`) eliminating return-loop inductance and dead copper islands.
    * 95 local `100 nF` decoupling capacitors (`C32..C128`) placed immediately adjacent to every IC's `VCC` pin.

![PCB Bottom View](pcb_bottom.png)

---

## 2. Project Structure

* `Aleste520v4.kicad_pro` — KiCad 9.0 project file
* `Aleste520v4.kicad_sch` — Root schematic + hierarchical sheets:
  * `cpu.kicad_sch` — Z80 CPU, System ROM (`U31`), Memory Mapper PROM (`U28`), keyboard/mapper RAM (`U82`, `U83` `AM29705`), wait/reset logic
  * `ram.kicad_sch` — 512 KB DRAM (`U1..U16`, `HM50256P-20` / `41256`), address multiplexers & 95 local IC decoupling capacitors (`C32..C128`)
  * `clkcrtc.kicad_sch` — Master clock generator, CRTC (`MC6845`), video timing & keyboard scan EPROM (`U65`), bus decode PROM (`U67`)
  * `gatearray.kicad_sch` — Video shift registers, Color Lookup EPROM (`U62`), and Color Palette RAM (`U60`, `U61` `AM29705`)
  * `periph.kicad_sch` — PPI (`8255`), PIT (`8253`), USART (`8251A`), PSG (`AY-3-8910`), RTC (`MC146818P`), audio & I/O ports
  * `fdc.kicad_sch` — Floppy Disk Controller (`8272` / `uPD765`), data separator & state PROM (`U69`)
* `Aleste520v4.kicad_pcb` — Fully routed 2-layer PCB (`286 × 220 mm`)
* `Aleste520v2.kicad_sym` / `Aleste520v3-rescue.kicad_sym` / `Aleste520v4.pretty/` — Project symbol and footprint libraries
* `Componenti_Aleste520v4.csv` (semicolon-delimited) / `Componenti_Aleste520v4_comma.csv` (comma-delimited) — Complete Bill of Materials (BOM) with component type, designator (`U1..U89`, `C1..C128`, `R1..R109`, etc.), part number/value, and THT footprint.
* `rom/` — Original binary ROM/PROM images (100% bit-compatible with this board).

---

## 3. EPROM & Bipolar PROM Programming Guide

All 6 original binary files in the `rom/` directory are **100% bit-for-bit compatible** with this Western PCB: no address or data lines were swapped during PCB layout, and the `AM29705` replacements (`U60`, `U61`, `U82`, `U83`) operate in non-inverting transparent mode identical to the original `KR1802IR1`.

### 3.1 Firmware Mapping Table

| Binary File | Size | PCB Socket | Western IC (Target) | Compatible Equivalents | Original Soviet IC | Function |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `rom/AL512.BIN` | `65,536 B` (64 KB) | **`U31`** | **`27C512`** (DIP-28) | `M27C512`, `AM27C512`, `W27C512` (EEPROM) | `К573РФ4` (`K573RF4`) | System BIOS, BASIC, Boot & AMSDOS |
| `rom/RFCOLDAT.BIN` | `2,048 B` (2 KB) | **`U62`** | **`2716` / `27C16`** (DIP-24) | `TMS27C16`, `M2716`, **`AT28C16`** (EEPROM) | `К573РФ2` (`K573RF2`) | Color Palette Lookup (`XD0..XD5`, `VRAMACC`) |
| `rom/RFVDKEY.BIN` | `2,048 B` (2 KB) | **`U65`** | **`2716` / `27C16`** (DIP-24) | `TMS27C16`, `M2716`, **`AT28C16`** (EEPROM) | `К573РФ2` (`K573RF2`) | Video Sync (`SYNC*`, `HY*`, `SINT*`) & Keyboard Scan (`KK0..KK3`) |
| `rom/MAPPER.BIN` | `256 B` (`256×4` bit) | **`U28`** | **`AM27S20`** (DIP-16 OC) | `N82S129`, `SN74S287`, `MMI6301`, `MB7052` | `КР556РТ4` (`KR556RT4`) | Memory Bank Address Mapper (`MAP14..MAP17`) |
| `rom/ROMRAM.BIN` | `256 B` (`256×4` bit) | **`U67`** | **`AM27S20`** (DIP-16 OC) | `N82S129`, `SN74S287`, `MMI6301`, `MB7052` | `КР556РТ4` (`KR556RT4`) | Bus & Memory Enable Decoder (`/ROMEN`, `/RAMEN`, `BUFFER0..1`) |
| `rom/AF.BIN` | `32 B` (`32×8` bit) | **`U69`** | **`SN74188`** (DIP-16 OC) | `N82S23`, `AM27S18`, `MMI6330`, `TBP18SA030` | `К155РЕ3` (`K155RE3`) | Floppy Disk Controller State / Precompensation PROM |

> **⚠️ Critical Note on Output Type (`U28`, `U67`, `U69`)**: The original schematic uses **Open-Collector (OC)** bipolar PROMs (`82S129` / `AM27S20` for `U28`, `U67` and `82S23` / `SN74188` for `U69`). For `U28` (`MAPPER.BIN`), pin 13 (`CS1`) is driven by `/MAPBLK` and the outputs `MAP14..MAP17` are wire-ORed with open-collector register files `U87`/`U88` (`74LS170`), so **`U28` MUST be an Open-Collector part** (`AM27S20` / `82S129` / `74S287`, **not** the totem-pole `82S126` / `74S387` / `AM27S21`).

---

### 3.2 Required Materials & Tools

#### A. For the 3 MOS EPROMs / EEPROMs (`U31`, `U62`, `U65`)
1. **Chips Required**:
   * **1× `27C512` (DIP-28, 64K×8, access time $\le 150\text{ ns}$)** for **`U31`**.
     * *Recommended*: Winbond **`W27C512-45Z`** (electrically erasable drop-in EEPROM) or ST **`M27C512-10F1`**.
   * **2× `27C16` / `2716` (DIP-24, 2K×8, access time $\le 150\text{ ns}$)** for **`U62`** and **`U65`**.
     * *Important speed requirement*: `U62` and `U65` operate inside combinatorial video/I/O paths (`RFCOLDAT` and `RFVDKEY`). Use fast CMOS versions ($\le 150\text{ ns}$) or **Atmel `AT28C16-15PC` (DIP-24 parallel EEPROM, 150 ns)**.
     * **Why `AT28C16` is strongly recommended for `U62` & `U65`**: On this PCB, Pin 21 (`VPP` on `2716`, `~WE` on `AT28C16`) is tied directly to `VCC (+5V)`. That means an **`AT28C16` is 100% plug-and-play in sockets `U62` and `U65` without any adapter**, programs at 5V on any cheap USB programmer, and avoids the $25\text{ V}$ $V_{PP}$ requirement of vintage NMOS `2716` chips!
2. **Tools Required**:
   * **Universal USB Programmer**: **XGecu TL866II Plus**, **T48 (TL866-3G)**, **T56**, or **GQ-4X4**.
   * *(If using UV-erasable `27C512` / `2716`)*: **UV EPROM Eraser** (253.7 nm UV-C lamp, ~15–20 minutes exposure) and opaque labels to cover the quartz window after programming.
   * *(If using vintage NMOS `2716` requiring $25\text{ V}$ $V_{PP}$)*: Ensure your programmer supports $25\text{ V}$ $V_{PP}$ (e.g., XGecu **T48**/**T56** or GQ-4X with external power; note that the older TL866II Plus tops out at $18\text{ V}$).

#### B. For the 3 Bipolar Fuse-Link PROMs (`U28`, `U67`, `U69`)
1. **Chips Required**:
   * **2× `82S129` / `AM27S20` / `SN74S287` (DIP-16, 256×4 Open-Collector, $\le 50\text{ ns}$)** for **`U28`** and **`U67`**.
   * **1× `82S23` / `SN74188` / `AM27S18` (DIP-16, 32×8 Open-Collector, $\le 50\text{ ns}$)** for **`U69`**.
2. **Tools Required**:
   * ⚠️ **Standard low-cost USB programmers (TL866II / T48) CANNOT program bipolar fuse PROMs** (`82S129`, `82S23`, `74S287`, `74188`), because blowing Nichrome/Titanium-Tungsten fuses requires high-current regulated pulses.
   * You need one of the following programmers:
     * **Industrial Vintage/Universal Programmer**: **Data I/O** (29B / Unipak 2B, 2900, 3900), **Hi-Lo Systems** (`ALL-03`, `ALL-07`, `ALL-11`), **Elnec BeeProg**, **Xeltek SuperPro** (models supporting bipolar PROMs), or **Stag PP39 / PP42**.
     * **DIY Arduino Bipolar PROM Programmer**: Open-source Arduino Mega shield projects specifically designed for `82S23`/`74188` and `82S129`/`74S287` (using a $12\text{ V}$–$12.5\text{ V}$ switched supply to blow fuses one bit at a time).

---

### 3.3 Step-by-Step Programming Instructions

1. **`U31` — System ROM (`rom/AL512.BIN`, 65,536 bytes)**:
   * **Target device**: `27C512` (or `W27C512`) in DIP-28.
   * **Blank Check**: Verify all bytes read `0xFF`.
   * **Load File**: Load `rom/AL512.BIN` in Binary format at buffer offset `0x0000` through `0xFFFF`.
   * **Verify Buffer Start**: The first 8 bytes at `0x0000` must be `01 89 7F ED 49 C3 91 05`.
   * **Program & Verify**: Burn the IC and verify against buffer.

2. **`U62` — Color Palette Lookup (`rom/RFCOLDAT.BIN`, 2,048 bytes)**:
   * **Target device**: `AT28C16` (recommended, 150 ns) or `27C16` / `2716` in DIP-24.
   * **Load File**: Load `rom/RFCOLDAT.BIN` in Binary format at buffer offset `0x0000` through `0x07FF`.
   * **Verify Buffer Start**: The first 8 bytes at `0x0000` must be `00 01 02 03 04 05 06 07`.
   * **Program & Verify**: Burn the IC and install in socket **`U62`**.

3. **`U65` — Video Sync & Keyboard Scan (`rom/RFVDKEY.BIN`, 2,048 bytes)**:
   * **Target device**: `AT28C16` (recommended, 150 ns) or `27C16` / `2716` in DIP-24.
   * **Load File**: Load `rom/RFVDKEY.BIN` in Binary format at buffer offset `0x0000` through `0x07FF`.
   * **Verify Buffer Start**: The first 8 bytes at `0x0000` must be `EB DB DE FA FA FA FB 6B`.
   * **Program & Verify**: Burn the IC and install in socket **`U65`**.

4. **`U28` — Memory Mapper PROM (`rom/MAPPER.BIN`, 256 bytes, 256×4 bit)**:
   * **Target device**: `82S129` / `AM27S20` / `SN74S287` (DIP-16, Open-Collector).
   * **Data format**: Each of the 256 bytes in `rom/MAPPER.BIN` stores its 4-bit word (`O3..O0` = `MAP17..MAP14`) in the **lower nibble (bits `0..3`)**, while the upper nibble (`bits 4..7`) is `0`.
   * **Verify Buffer Start**: The first 8 bytes at `0x00` must be `00 01 02 03 00 01 02 07`.
   * **Program & Verify**: Program and install in socket **`U28`**.

5. **`U67` — Bus & Memory Enable Decoder PROM (`rom/ROMRAM.BIN`, 256 bytes, 256×4 bit)**:
   * **Target device**: `82S129` / `AM27S20` / `SN74S287` (DIP-16, Open-Collector).
   * **Data format**: Each of the 256 bytes in `rom/ROMRAM.BIN` stores its 4-bit word (`O3=/RAMEN`, `O2=/ROMEN`, `O1=BUFFER1`, `O0=BUFFER0`) in the **lower nibble (bits `0..3`)**.
   * **Verify Buffer Start**: The first 8 bytes at `0x00` must be `0B 06 0B 06 06 06 06 06`.
   * **Program & Verify**: Program and install in socket **`U67`**.

6. **`U69` — FDC State / Precompensation PROM (`rom/AF.BIN`, 32 bytes, 32×8 bit)**:
   * **Target device**: `SN74188` / `82S23` / `AM27S18` (DIP-16, Open-Collector).
   * **Data format**: 32 bytes (`0x00..0x1F`); bits `D0..D3` drive `FP0..FP3` and bit `D4` drives `WRC` (bits `D5..D7` are unused/unconnected).
   * **Verify Buffer Start**: The first 8 bytes at `0x00` must be `11 11 02 03 03 04 05 06`.
   * **Program & Verify**: Program and install in socket **`U69`**.
