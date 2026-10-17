# Aleste 520EX — Staggered Mechanical Keyboard Subsystem (`keyboard/`)

This directory contains the complete KiCad 9.0 schematic, routed 2-layer PCB, 3D switch/stabilizer models, and Bill of Materials for the **Aleste 520EX Staggered Mechanical Keyboard** (`358.0 × 122.0 mm`), reverse-engineered directly from the hardware keyboard scan EPROM ([`rom/RFVDKEY.BIN`](../rom/RFVDKEY.BIN), IC `U65`) and system BIOS ([`rom/AL512.BIN`](../rom/AL512.BIN), offset `0x1EEF`).

---

## 1. Files in `keyboard/`

- **[`Aleste520_Keyboard.kicad_pro`](Aleste520_Keyboard.kicad_pro)**: KiCad 9.0 project file.
- **[`Aleste520_Keyboard.kicad_sch`](Aleste520_Keyboard.kicad_sch)**: Complete electrical schematic (`0 ERC errors/warnings`) with 82 staggered matrix keys (`SW1..SW82`), 82 `1N4148` anti-ghosting diodes (`D1..D82`), 1 hardware reset key (`SW83`), and dual `2x06` (`2.54 mm`) IDC connectors (`J1`, `J2`).
- **[`Aleste520_Keyboard.kicad_pcb`](Aleste520_Keyboard.kicad_pcb)**: Fully routed 2-layer PCB (`358.0 × 122.0 mm`, **0 DRC violations, 0 unconnected pads**) featuring:
  - Authentic staggered physical key layout with **`6.25U` (`119.06 mm`) Spacebar (`SW81`)** and PCB-mount Cherry MX stabilizer holes at `±50.0 mm` (`Button_Switch_Keyboard:SW_Cherry_MX_6.25u_PCB`).
  - Staggered modifier footprints (`1.50U TAB`, `1.75U CAPS`, `2.00U SHIFT`, `1.50U RETURN`, `1.50U CTRL`, `1.25U RUS/LAT`, `1.25U COPY`, `1.50U GRAPH`, and `1.25U` top function keys).
  - Separate right-hand Numpad & Cursor block (`F0..F9`, `FDOT`, `ENTER`, `UP/DOWN/LEFT/RIGHT`) and isolated top-right `RESET` key (`SW83`).
  - Centered top silkscreen title between `MH2 (124.0, 4.0)` and `MH3 (244.0, 4.0)`.
  - 10 `M3` (`3.2 mm` drill) anti-flex mounting holes (`MH1..MH10`) placed completely outside all keycap skirts.
- **[`3dmodels/`](3dmodels/)**: Colored VRML 2.0 and STEP 3D models for all Cherry MX key widths (`1.00u`, `1.25u`, `1.50u`, `1.75u`, `2.00u`, and `6.25u` with stabilizers and wire).
- **[`keyboard_top.png`](keyboard_top.png)** & **[`keyboard_bottom.png`](keyboard_bottom.png)**: Raytraced 3D renders of the populated keyboard PCB.
- **[`Componenti_Tastiera_Aleste520.csv`](Componenti_Tastiera_Aleste520.csv)**: Complete Bill of Materials (BOM).

---

## 2. Decoded Hardware Keyboard Matrix (`KM0..KM10 × KM11..KM18`)

On the Aleste 520EX motherboard, counter `U63` and `2716` EPROM `U65` (`RFVDKEY.BIN`) drive 74LS154 4-to-16 column demultiplexer `U80` (`KM0..KM10`, active-low) and 74LS151 8-to-1 row multiplexer `U81` (`KM11..KM18`), shifting the scanned state into `U84` (`74LS374`) to emulate the Amstrad CPC / MSX keyboard matrix on `AY-3-8910` (`U18`) Port A (`X1..X8`).

| Column \ Row | `KM11` (`D0`) | `KM12` (`D1`) | `KM13` (`D2`) | `KM14` (`D3`) | `KM15` (`D4`) | `KM16` (`D5`) | `KM17` (`D6`) | `KM18` (`D7`) |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **`KM0`** | — | — | — | — | **`SHIFT`** (`2.00U`) | `F7` | `F8` | `F9` |
| **`KM1`** | **`ESC`** | **`TAB`** (`1.50U`) | **`CTRL`** (`1.50U`) | **`RUS/LAT`** (`1.25U`) | **`CAPS`** (`1.75U`) | `F0` | `FDOT` (`.`) | `ENTER` (Num) |
| **`KM2`** | `;` (`+`) | `J` | `F` | `Q` | **`COPY`** (`1.25U`) | `F1` | `F2` | `F3` |
| **`KM3`** | `F1_MSX` (`1.25U`) | `1` (`!`) | `C` | `Y` | `^` (`£`) | `F4` | `F5` | `F6` |
| **`KM4`** | `F2_MSX` (`1.25U`) | `2` (`"`) | `U` | `W` | `S` | — | **`CLR`** (`1.25U`) | — |
| **`KM5`** | `F3_MSX` (`1.25U`) | `3` (`#`) | `K` | `A` | `M` | **`DEL`** (`1.25U`) | **`STOP`** (`1.25U`) | **`SELECT`** (`1.25U`) |
| **`KM6`** | `4` (`$`) | `E` | `P` | `I` | **`SPACE`** (**`6.25U`**) | `RIGHT` (`→`) | **`RETURN`** (`1.50U`) | **`GRAPH`** (`1.50U`) |
| **`KM7`** | `F4_MSX` (`1.25U`) | `5` (`%`) | `N` | `R` | `T` | `DOWN` (`↓`) | `UP` (`↑`) | `/` (`?`) |
| **`KM8`** | `F5_MSX` (`1.25U`) | `6` (`&`) | `G` | `O` | `X` | `.` (`>`) | `:` (`*`) | `-` (`=`) |
| **`KM9`** | `7` (`'`) | `[` (`{`) | `L` | `B` | `LEFT` (`←`) | `\` (`` ` ``) | `H` | `0` (`_`) |
| **`KM10`** | `8` (`(`) | `]` (`}`) | `D` | `@` (`\|`) | `,` (`<`) | `V` | `Z` | `9` (`)`) |

---

## 3. Staggered Physical Layout & Keycap Sizes

- **Row 0 (`Y = 26.0 mm` — Function & System Control Row)**:
  - `ESC (1.00U)` | `F1 (1.25U)` `F2 (1.25U)` `F3 (1.25U)` `F4 (1.25U)` `F5 (1.25U)` | `SELECT (1.25U)` `STOP (1.25U)` `CLR (1.25U)` `DEL (1.25U)` | isolated `RESET (1.00U)` at `X = 339.5 mm`
- **Row 1 (`Y = 43.5 mm` — Number Row + Numpad Row 1)**:
  - `1` `2` `3` `4` `5` `6` `7` `8` `9` `0` `-` `^` `\` (all `1.00U`) || `F7` `F8` `F9` `UP` (`1.00U`)
- **Row 2 (`Y = 61.0 mm` — QWERTY Row + Numpad Row 2)**:
  - `TAB (1.50U)` `Q` `W` `E` `R` `T` `Y` `U` `I` `O` `P` `@` `[` || `F4` `F5` `F6` `DOWN` (`1.00U`)
- **Row 3 (`Y = 78.5 mm` — Home Row + Numpad Row 3)**:
  - `CAPS (1.75U)` `A` `S` `D` `F` `G` `H` `J` `K` `L` `;` `:` `]` || `F1` `F2` `F3` `LEFT` (`1.00U`)
- **Row 4 (`Y = 96.0 mm` — Shift Row + Numpad Row 4)**:
  - `SHIFT (2.00U)` `Z` `X` `C` `V` `B` `N` `M` `,` `.` `/` `RETURN (1.50U)` || `F0` `FDOT` `ENTER` `RIGHT` (`1.00U`)
- **Row 5 (`Y = 113.5 mm` — Bottom Spacebar Row)**:
  - `CTRL (1.50U)` `RUS/LAT (1.25U)` `COPY (1.25U)` **`SPACE (6.25U, 119.06 mm with ±50.0 mm Cherry MX stabilizers)`** `GRAPH (1.50U)`
