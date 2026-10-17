# Aleste 520EX — Western Through-Hole (THT) Edition (KiCad 9.0)

Complete Western reproduction of the **1993 Soviet Aleste 520EX** Z80 computer (Amstrad CPC 6128 & MSX2 compatible hybrid architecture), redesigned in **KiCad 9.0** using **100% Western Through-Hole (THT)** components and a fully routed 2-layer PCB.

![PCB Top View](pcb_top.png)

---

## Key Highlights of This Release

* **100% Western IC Conversion (`U1..U89`)**:
  * All Soviet logic, memory, and peripheral ICs have been converted to standard Western equivalents (`74LSxx`, `74ALSxx`, `Z80CPU`, `8255`, `8253`, `MC6845`, `AY-3-8910A`, `HD146818`, `41256`).
  * **Resolved `KR1802IR1` (`КР1802ИР1`)**: Replaced the Soviet 24-pin 16x4 two-port register file ICs at `U60`, `U61`, `U82`, and `U83` with the Western **AMD `AM29705` (DIP-28)**, properly wiring its dual address buses (`A0..A3`, `B0..B3`), write strobes (`/WE1`, `/WE2`), output latches (`LO`), and cascading open-collector outputs (`/OE1`, `/OE2`) for both the color palette (`U60`+`U61`) and memory mapper (`U82`+`U83`).
  * Standardized all IC reference designators from Russian `D1..D89` to Western `U1..U89`.
* **100% Through-Hole (THT) Assembly**:
  * Every component (`U1..U89` DIP sockets, resistors, axial/radial capacitors, diodes, transistors, crystals, trimmers, connectors) uses standard Through-Hole footprints for straightforward hand soldering and servicing.
  * Both `F.Silkscreen` reference designators (`U1..U89`) and IC part numbers (`Value`, e.g., `74LS174`, `AM29705`, `Z80CPU`) are printed cleanly inside each DIP socket outline.
* **Fully Routed 2-Layer PCB (`286 × 220 mm`)**:
  * **0 ERC Errors** in the hierarchical schematic (`Aleste520v4.kicad_sch` + 8 sub-sheets).
  * **0 DRC Violations & 0 Unconnected Items** on the PCB (`Aleste520v4.kicad_pcb`).
  * **Signal Integrity & Power Distribution**:
    * Dedicated Netclasses for `Power` (`0.40 mm`), `Critical` high-speed clocks/strobes/analog RGB & audio (`0.25 mm` trace width with `0.28 mm` anti-crosstalk clearance), and `Default` (`0.25 mm` trace width, `0.20 mm` clearance).
    * Full `F.Cu` and `B.Cu` `GND` copper pours with **Thermal Reliefs** (`0.35 mm` spokes, `0.25 mm` gap) for easy soldering and over **3,670 GND stitching vias** (`0.6 mm / 0.3 mm`) eliminating return-loop inductance and copper dead-ends.
    * 95 local `100 nF` decoupling capacitors (`C32..C128`) placed immediately adjacent to every IC's `VCC` pin.

![PCB Bottom View](pcb_bottom.png)

---

## Project Structure

* `Aleste520v4.kicad_pro` — KiCad 9.0 project file
* `Aleste520v4.kicad_sch` — Root schematic + hierarchical sheets:
  * `cpu.kicad_sch` — Z80 CPU, System ROM, Memory Mapper (`U82`, `U83` `AM29705`), wait/reset logic
  * `ram.kicad_sch` — 512 KB DRAM (`U1..U16`, `41256`), address multiplexers & 95 local IC decoupling capacitors (`C32..C128`)
  * `clkcrtc.kicad_sch` — Master clock generator & CRTC (`MC6845`)
  * `gatearray.kicad_sch` — Video timing, shift registers, and Color Palette (`U60`, `U61` `AM29705`)
  * `periph.kicad_sch` — PPI (`8255`), PIT (`8253`), PSG (`AY-3-8910A`), keyboard, audio & I/O ports
  * `fdc.kicad_sch` — Floppy Disk Controller (`FD1793`), data separator & RTC (`HD146818`)
* `Aleste520v4.kicad_pcb` — Fully routed 2-layer PCB (`286 × 220 mm`)
* `Aleste520v2.kicad_sym` / `Aleste520v3-rescue.kicad_sym` / `Aleste520v4.pretty/` — Project symbol and footprint libraries
* `Componenti_Aleste520v4.csv` / `Componenti_Aleste520v4_comma.csv` — Complete Bill of Materials (BOM) with component type, designator (`U1..U89`, `C1..C128`, `R1..R109`, etc.), and part number/value.
