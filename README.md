# Aleste 520EX — Western Through-Hole (THT) Complete System (KiCad 9.0)

🌐 **Language / Lingua**: **🇬🇧 English** | [**🇮🇹 Leggi in Italiano (`README.it.md`)**](README.it.md)

---

Complete Western hardware reproduction of the **1993 Soviet Aleste 520EX** Z80 personal computer (an Amstrad CPC 6128 & MSX2 compatible hybrid architecture designed by Patisonic in Omsk, Russia), completely redesigned in **KiCad 9.0** using **100% Western Through-Hole (THT)** components, complete with its dedicated **Cherry MX Mechanical Keyboard (`keyboard/`)** and **Parametric Anti-Flex Enclosure (`case/`)**.

![Motherboard Top View](board/pcb_top.png)

---

## 1. Repository Structure

The repository is organized into four modular directories:

| Directory | Contents | Description |
| :--- | :--- | :--- |
| **[`board/`](board/)** | `Aleste520v4.kicad_pro`, `.kicad_sch`, `.kicad_pcb`, `Componenti_Aleste520v4.csv` | **Motherboard (`400.9 × 280.5 mm`)**: 100% Western THT ICs (`U1..U89`), standard `2.54 mm` `2x06` keyboard headers (`X8`, `X9`), 11 `M3` mounting holes (`MH1..MH11`), labeled power/RTC pads (`P1..P8`), **0 ERC / 0 DRC errors**. |
| **[`keyboard/`](keyboard/)** | `Aleste520_Keyboard.kicad_pro`, `.kicad_sch`, `.kicad_pcb`, `Componenti_Tastiera_Aleste520.csv`, [`README.md`](keyboard/README.md) | **Mechanical Keyboard (`358.0 × 122.0 mm`)**: 82 Cherry MX switches (`SW1..SW81` matrix + `SW82` Hardware Reset), 81 `1N4148` anti-ghosting diodes (Full NKRO), standard `2.54 mm` `2x06` IDC headers (`J1`, `J2`), 10 `M3` anti-flex mounting holes (`MH1..MH10`), **0 ERC / 0 DRC errors**. |
| **[`case/`](case/)** | `Aleste520_Case.scad`, `keyboard_plate.dxf`, [`README.md`](case/README.md) | **Custom Desktop Enclosure (`416.0 × 296.0 × 62.0 mm`)**: Parametric OpenSCAD 3D CAD model (Bottom Base Tray, Sloped Top Cover, `1.5 mm` Switch Mounting Plate, and 4-quadrant split mode for standard $256\times 256\text{ mm}$ 3D printers) + laser-cut ready `keyboard_plate.dxf` with a **3-Stage Anti-Flex Keyboard Support System**. |
| **[`rom/`](rom/)** | `AL512.BIN`, `RFCOLDAT.BIN`, `RFVDKEY.BIN`, `MAPPER.BIN`, `ROMRAM.BIN`, `AF.BIN` | **Original Firmware Images**: 100% bit-compatible with this Western hardware reproduction (English boot menu, standard ASCII/Latin + Cyrillic support). |

---

## 2. Motherboard Highlights (`board/`)

* **100% Western IC Conversion (`U1..U89`)**:
  * All Soviet logic, memory, and peripheral ICs have been converted to standard Western equivalents (`74LSxx`, `74HCxx`, `Z80CPU`, `8255`, `8253`, `8251A`, `8272`, `MC6845`, `AY-3-8910`, `MC146818P`, `HM50256P-20` / `41256`).
  * **Resolved `KR1802IR1` (`КР1802ИР1`)**: Replaced the scarce Soviet 24-pin 16×4 two-port register file ICs at `U60`, `U61`, `U82`, and `U83` with the Western **AMD `AM29705` (DIP-28)**, properly wiring its dual address buses (`A0..A3`, `B0..B3`), write strobes (`~WE1`, `~WE2`), transparent output latches (`~A-LO = GND`, `LE = VCC`), and open-collector outputs (`~OE-A`) for both the color palette (`U60`+`U61`) and keyboard/mapper subsystem (`U82`+`U83`).
  * Standardized all IC reference designators from Russian `D1..D89` to Western `U1..U89`.
* **Upgraded Standard $2.54\text{ mm}$ Keyboard Connectors (`X8` & `X9`)**:
  * Replaced the obsolete single-row $1.27\text{ mm}$ pitch headers on `X8` and `X9` with standard **$2.54\text{ mm}$ ($0.1''$) dual-row `2x06` Pin Headers / IDC Box Headers** (`Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical`), compatible with standard 12-pin $1.27\text{ mm}$ flat ribbon IDC cables or DuPont harnesses.
* **11 Mechanical `M3` Mounting Holes (`MH1..MH11`)**:
  * Added 11 plated `M3` ($\varnothing\ 3.2\text{ mm}$ drill, $\varnothing\ 6.0\text{ mm}$ pad tied to `GND` chassis shield) mounting holes along the perimeter, center, and front keyboard zone to bolt the motherboard to the enclosure standoffs and coaxial keyboard anti-flex support towers.
* **Fully Routed 2-Layer PCB (`400.9 × 280.5 mm`)**:
  * **0 ERC Errors** across the hierarchical schematic (`board/Aleste520v4.kicad_sch` + 6 sub-sheets).
  * **0 DRC Violations & 0 Unconnected Items** on the PCB (`board/Aleste520v4.kicad_pcb`).
  * Full `F.Cu` and `B.Cu` `GND` copper pours with **Thermal Reliefs** (`0.35 mm` spokes, `0.25 mm` gap) and over **3,670 GND stitching vias**, plus 95 local `100 nF` decoupling capacitors (`C32..C128`).

![Motherboard Bottom View](board/pcb_bottom.png)

---

## 3. Power Supply Guide: PicoPSU + $220\text{ V AC} \rightarrow 12\text{ V DC}$

The Aleste 520EX motherboard is powered primarily by **`+5V DC`** (`VCC` plane, consuming $\approx 2.2\text{ A} \dots 2.8\text{ A}$ for the 89 TTL/CMOS/NMOS ICs) plus **`+12V DC`** (routed to the expansion slot `X1` and video connector `X5.B1`), while a separate **`3V` Lithium Coin Cell (`CR2032`)** backs up the `MC146818P` Real-Time Clock (`U19`).

### 3.1 Safe Connection to $220\text{ V AC}$ Mains
For complete electrical safety (eliminating any high-voltage $220\text{ V AC}$ inside the 3D-printed enclosure):
1. **External AC/DC Brick ($220\text{ V AC} \rightarrow 12\text{ V DC}$)**: Use a certified external **`12V DC / 5A (60W)`** switching power adapter with a standard `5.5 × 2.5 mm` DC barrel plug.
2. **Internal DC-DC PicoPSU (`PicoPSU-80` / `PicoPSU-120` or `12V->5V 5A` Buck)**:
   * Mount the panel-mount `5.5 × 2.5 mm` DC barrel jack and optional rocker switch into the dedicated rear cutouts provided in [`case/Aleste520_Case.scad`](case/Aleste520_Case.scad).
   * Connect the `PS_ON#` (Green wire, Pin 16 on the ATX 24-pin header) of the PicoPSU to `GND` (Black wire, Pin 15/17) via the rear power switch so the PicoPSU turns on when switched.
   * Feed `+5V` and `+12V` from the PicoPSU (using the 4-pin Molex / SATA power cable or ATX header) to the motherboard pads `P1..P6` as detailed below.

### 3.2 Motherboard Power & RTC Battery Pads (`P1..P8`)

| Pad | Silkscreen Label | Net | PCB Coordinates `(X, Y)` | Connection |
| :--- | :--- | :--- | :--- | :--- |
| **`P1`** | `+5V_VCC` | `VCC` (`+5V`) | `(321.31, 240.03)` | **PicoPSU `+5V` (Red wire, 18 AWG)** — Main logic supply |
| **`P2`** | `GND_PWR` | `GND` | `(311.15, 250.19)` | **PicoPSU `GND` (Black wire, 18 AWG)** — Main ground return |
| **`P3`** | `+12V_EXP` | `+12V` | `(303.53, 250.19)` | **PicoPSU `+12V` (Yellow wire)** — Expansion slot `X1` & `X5.B1` |
| **`P4`** | `GND_EXP` | `GND` | `(295.91, 250.19)` | **PicoPSU `GND` (Black wire)** — Auxiliary ground return |
| **`P5`** | `+5V_AUX` | `VCC` (`+5V`) | `(292.10, 260.35)` | **PicoPSU `+5V` (Red wire)** — Parallel `+5V` feed (reduces voltage drop) |
| **`P6`** | `GND_AUX` | `GND` | `(306.07, 265.43)` | **PicoPSU `GND` (Black wire)** — Parallel `GND` feed |
| **`P7`** | `BAT+_3V` | `3V` (`MC146818` RTC) | `(330.20, 232.41)` | **`CR2032` Coin Cell Holder `+` (Positive)** — RTC CMOS backup **(`3V` ONLY!)** |
| **`P8`** | `BAT-_GND` | `GND` | `(330.20, 226.06)` | **`CR2032` Coin Cell Holder `-` (Negative)** — RTC ground |

---

## 4. Dedicated Mechanical Keyboard (`keyboard/`)

See [**`keyboard/README.md`**](keyboard/README.md) for the complete keyboard documentation, matrix table, and pinout.

* **PCB Dimensions**: `358.0 × 122.0 mm` (2-layer FR4, `1.6 mm`, **0 ERC / 0 DRC violations**).
* **Switches**: 81 Cherry MX keys (`SW1..SW81`) arranged in the native $11 \times 8$ Aleste 520EX matrix (`KM0..KM10` $\times$ `KM11..KM18`) + 1 Cherry MX Hardware Reset key (`SW82`, `SBRES` $\rightarrow$ `GND`).
* **Full NKRO Anti-Ghosting**: 81 through-hole `1N4148` diodes (`D1..D81`, `DO-35`) with cathode (`Pin 1`) on column `KM0..KM10` and anode (`Pin 2`) on switch `Pin 1` (matched to the active-low column strobe driven by `74LS145` `U80`).
* **1:1 Ribbon Cable Connection**: Two `2x06` ($2.54\text{ mm}$ pitch) headers `J1` and `J2` connect straight to motherboard headers `X8` and `X9`.

![Mechanical Keyboard Top View](keyboard/keyboard_top.png)

---

## 5. Custom Enclosure with Anti-Flex Keyboard Support (`case/`)

See [**`case/README.md`**](case/README.md) for printing, laser-cutting, and assembly instructions.

* **External Dimensions**: `416.0 × 296.0 × 62.0 mm` (wedged profile: `32 mm` front typing height, `62 mm` rear I/O panel height).
* **3-Stage Anti-Flex Keyboard Support System** (eliminating typing deflection across the $358\text{ mm}$ span):
  1. **`1.5 mm` Rigid Switch Mounting Plate** (`case/keyboard_plate.dxf` for laser-cut aluminum/steel/FR4, or 3D-printed via `part = "plate"` in `case/Aleste520_Case.scad`).
  2. **Orthogonal Internal Stiffening Grid** built into the underside of the Top Cover (`4.0 × 8.0 mm` perimeter ledge + 2 transverse ribs + 2 longitudinal ribs).
  3. **7 Coaxial Anti-Flex Support Columns (`MH5..MH11`)** transferring vertical typing force straight through the Keyboard PCB (`MH1..MH10`) and Motherboard (`MH5..MH11`) down to the Bottom Case floor.

---

## 6. EPROM & Bipolar PROM Programming Guide (`rom/`)

All 6 original binary files in the [`rom/`](rom/) directory are **100% bit-for-bit compatible** with this Western PCB: no address or data lines were swapped during PCB layout, and the `AM29705` replacements (`U60`, `U61`, `U82`, `U83`) operate in non-inverting transparent mode identical to the original `KR1802IR1`.

> **🇬🇧 Note on Language**: The `rom/AL512.BIN` firmware already features its built-in **English boot/setup interface** (`ALESTE 520EX`, `PATISONIC 1993`, `SETUP`) and includes both standard **Western Latin/ASCII** and Cyrillic character sets (`RUS/LAT` key).

### 6.1 Firmware Mapping Table

| Binary File | Size | PCB Socket | Western IC (Target) | Compatible Equivalents | Original Soviet IC | Function |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [`rom/AL512.BIN`](rom/AL512.BIN) | `65,536 B` (64 KB) | **`U31`** | **`27C512`** (DIP-28) | `M27C512`, `AM27C512`, `W27C512` (EEPROM) | `К573РФ4` (`K573RF4`) | System BIOS, BASIC, Boot & AMSDOS |
| [`rom/RFCOLDAT.BIN`](rom/RFCOLDAT.BIN) | `2,048 B` (2 KB) | **`U62`** | **`2716` / `27C16`** (DIP-24) | `TMS27C16`, `M2716`, **`AT28C16`** (EEPROM) | `К573РФ2` (`K573RF2`) | Color Palette Lookup (`XD0..XD5`, `VRAMACC`) |
| [`rom/RFVDKEY.BIN`](rom/RFVDKEY.BIN) | `2,048 B` (2 KB) | **`U65`** | **`2716` / `27C16`** (DIP-24) | `TMS27C16`, `M2716`, **`AT28C16`** (EEPROM) | `К573РФ2` (`K573RF2`) | Video Sync (`SYNC*`, `HY*`, `SINT*`) & Keyboard Scan (`KK0..KK3`) |
| [`rom/MAPPER.BIN`](rom/MAPPER.BIN) | `256 B` (`256×4` bit) | **`U28`** | **`AM27S20`** (DIP-16 OC) | `N82S129`, `SN74S287`, `MMI6301`, `MB7052` | `КР556РТ4` (`KR556RT4`) | Memory Bank Address Mapper (`MAP14..MAP17`) |
| [`rom/ROMRAM.BIN`](rom/ROMRAM.BIN) | `256 B` (`256×4` bit) | **`U67`** | **`AM27S20`** (DIP-16 OC) | `N82S129`, `SN74S287`, `MMI6301`, `MB7052` | `КР556РТ4` (`KR556RT4`) | Bus & Memory Enable Decoder (`/ROMEN`, `/RAMEN`, `BUFFER0..1`) |
| [`rom/AF.BIN`](rom/AF.BIN) | `32 B` (`32×8` bit) | **`U69`** | **`SN74188`** (DIP-16 OC) | `N82S23`, `AM27S18`, `MMI6330`, `TBP18SA030` | `К155РЕ3` (`K155RE3`) | Floppy Disk Controller State / Precompensation PROM |

> **⚠️ Critical Note on Output Type (`U28`, `U67`, `U69`)**: The original schematic uses **Open-Collector (OC)** bipolar PROMs (`82S129` / `AM27S20` for `U28`, `U67` and `82S23` / `SN74188` for `U69`). For `U28` (`MAPPER.BIN`), pin 13 (`CS1`) is driven by `/MAPBLK` and the outputs `MAP14..MAP17` are wire-ORed with open-collector register files `U87`/`U88` (`74LS170`), so **`U28` MUST be an Open-Collector part** (`AM27S20` / `82S129` / `74S287`, **not** the totem-pole `82S126` / `74S387` / `AM27S21`).

### 6.2 Required Materials & Tools

* **For the 3 MOS EPROMs / EEPROMs (`U31`, `U62`, `U65`)**:
  * **1× `27C512` (DIP-28, $\le 150\text{ ns}$)** for **`U31`** (e.g., Winbond `W27C512-45Z` EEPROM or ST `M27C512-10F1`).
  * **2× `AT28C16-15PC` (DIP-24 EEPROM, 150 ns)** or fast CMOS `27C16` for **`U62`** and **`U65`** (`AT28C16` is 100% plug-and-play in `U62`/`U65` because Pin 21 is tied to `+5V`, and programs at 5V on any USB programmer such as **XGecu TL866II Plus / T48 / T56**).
* **For the 3 Bipolar Fuse-Link PROMs (`U28`, `U67`, `U69`)**:
  * **2× `82S129` / `AM27S20` / `SN74S287` (DIP-16, 256×4 OC)** for **`U28`** and **`U67`**.
  * **1× `82S23` / `SN74188` / `AM27S18` (DIP-16, 32×8 OC)** for **`U69`**.
  * **Programmer**: Industrial programmer supporting bipolar fuse PROMs (**Data I/O**, **Hi-Lo ALL-03/07/11**, **Elnec BeeProg**, **Stag PP39/42**) or an open-source **Arduino Bipolar PROM Programmer**.
