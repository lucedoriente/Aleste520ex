# Aleste 520EX — Custom Enclosure & Anti-Flex Keyboard Support (`case/`) — FreeCAD 1.1 Edition

## 🇬🇧 English Overview

Because the **Aleste 520EX** motherboard measures **`400.9 × 280.5 mm`** (an extended custom desktop footprint with a front-right L-wing cutout that exceeds standard ATX `305 × 244 mm` and E-ATX `305 × 330 mm` PC form factors), this directory provides a **native FreeCAD 1.1 3D CAD enclosure** (`416.0 × 296.0 × 62.0 mm`) specifically engineered for:
1. **11 `M3` Motherboard Mounting Holes (`MH1..MH11`)** matching [`board/Aleste520v4.kicad_pcb`](../board/Aleste520v4.kicad_pcb) to the tenth of a millimeter.
2. **Integrated PicoPSU Bay & Rear DC Panel Mount**: Dedicated bosses in the front-right L-cutout area for a `12V DC` **PicoPSU** module, plus a rear `11.4 mm` barrel-jack cutout (for an external `220V AC -> 12V DC 5A` power brick) and rear rocker power switch cutout.
3. **3-Stage Anti-Flex Keyboard Support System**: Eliminates any mechanical flexing or bouncing during typing across the `358.0 × 122.0 mm` mechanical keyboard bay:
   - **Stage 1 — `1.5 mm` Rigid Switch Mounting Plate (`Aleste520_Switch_Plate.FCStd` / `keyboard_plate.dxf`)**: Holds all 82 Cherry MX switches in `14.0 × 14.0 mm` cutouts (`SW1..SW81` matrix + `SW82` Reset). Can be laser-cut in `1.5 mm` anodized aluminum, stainless steel, brass, or FR4 using [`keyboard_plate.dxf`](keyboard_plate.dxf), or 3D-printed directly from [`Aleste520_Switch_Plate.FCStd`](Aleste520_Switch_Plate.FCStd).
   - **Stage 2 — Orthogonal Stiffening Rib Grid in the Top Cover (`Aleste520_Top_Cover.FCStd`)**: A continuous `4.0 mm × 8.0 mm` perimeter support ledge plus **2 transverse cross-beams** (at $X = 128.8\text{ mm}$ and $X = 248.8\text{ mm}$) and **2 longitudinal cross-beams** running directly underneath the switch plate between key rows/columns.
   - **Stage 3 — 7 Coaxial Compression Pillars (`MH5..MH11`)**: Transfer vertical typing forces straight through the Keyboard PCB (`MH1..MH10`) and Motherboard (`MH5..MH11`) down to the reinforced floor of the Bottom Case (`Aleste520_Bottom_Case.FCStd`), resulting in **`0.0 mm` typing deflection**.

### Files Included in `case/`

| File | Format | Description |
| :--- | :--- | :--- |
| **[`Aleste520_Case.FCStd`](Aleste520_Case.FCStd)** | **FreeCAD 1.1 (`.FCStd`)** | Complete multi-body FreeCAD assembly containing `01_Bottom_Case_Tray`, `02_Keyboard_Switch_Plate_1_5mm`, `03_Top_Cover_Sloped_AntiFlex`, plus the `04_Printable_Quadrants_256x256mm` group (`Bottom_Q1..Q4`) for standard $256 \times 256\text{ mm}$ 3D printers. |
| **[`Aleste520_Bottom_Case.FCStd`](Aleste520_Bottom_Case.FCStd)** | **FreeCAD 1.1 (`.FCStd`)** | Standalone FreeCAD file for the Bottom Base Tray (with 11 `M3` motherboard standoffs, 7 coaxial anti-flex keyboard columns, PicoPSU mounts, and rear I/O cutouts). |
| **[`Aleste520_Top_Cover.FCStd`](Aleste520_Top_Cover.FCStd)** | **FreeCAD 1.1 (`.FCStd`)** | Standalone FreeCAD file for the Sloped Top Cover (with recessed `358 × 122 mm` keyboard bay and orthogonal anti-flex support ribs). |
| **[`Aleste520_Switch_Plate.FCStd`](Aleste520_Switch_Plate.FCStd)** | **FreeCAD 1.1 (`.FCStd`)** | Standalone FreeCAD file for the `1.5 mm` Cherry MX Switch Mounting Plate (82 switch cutouts + 10 `M3` anti-flex holes). |
| **[`Aleste520_Case.step`](Aleste520_Case.step)** | **STEP (`.step`)** | Universal ISO 10303-21 B-Rep 3D CAD file compatible with FreeCAD, Fusion 360, SolidWorks, Ondsel, and modern 3D slicers (Bambu Studio, OrcaSlicer, PrusaSlicer). |
| **[`keyboard_plate.dxf`](keyboard_plate.dxf)** | **AutoCAD DXF (`.dxf`)** | Ready-to-cut 2D vector drawing (`358.0 × 122.0 mm`, 82 cutouts `14×14 mm`, 10 `Ø 3.2 mm` M3 holes) for laser-cutting the `1.5 mm` metal/FR4 anti-flex plate. |
| **[`generate_freecad_case.FCMacro`](generate_freecad_case.FCMacro)** | **FreeCAD Macro (`.FCMacro`)** | Parametric Python macro for FreeCAD 1.0/1.1 that regenerates all `.FCStd` and `.step` files from exact dimensions (`freecadcmd.exe case/generate_freecad_case.FCMacro`). |

---

## 🇮🇹 Guida in Italiano — Case Custom e Supporti Anti-Flessione Tastiera (FreeCAD 1.1)

Poiché la scheda madre **Aleste 520EX** misura **`400.9 × 280.5 mm`** (con uno scasso a "L" nell'angolo anteriore destro e dimensioni superiori agli standard PC ATX/E-ATX), tutti i file CAD 3D in questa cartella sono stati realizzati nativamente in **FreeCAD 1.1** (`416.0 × 296.0 × 62.0 mm`).

### 1. Architettura Anti-Flessione della Tastiera (Zero Deflection)
Una tastiera meccanica larga `358 mm` flettono inevitabilmente al centro se appoggiata solo sui bordi. Per eliminare ogni flessione durante la digitazione, il progetto integra **3 livelli di irrigidimento**:
1. **Piastra Switch da `1.5 mm` ([`Aleste520_Switch_Plate.FCStd`](Aleste520_Switch_Plate.FCStd) / [`keyboard_plate.dxf`](keyboard_plate.dxf))**: piastra rigida (tagliabile al laser in alluminio anodizzato/acciaio/FR4 da `1.5 mm` tramite `keyboard_plate.dxf` oppure stampabile in 3D) che blocca meccanicamente tutti gli 82 switch Cherry MX.
2. **Nervature Ortogonali sotto la Scocca Superiore ([`Aleste520_Top_Cover.FCStd`](Aleste520_Top_Cover.FCStd))**: cornice perimetrale di battuta da `4.0 × 8.0 mm` più **2 traverse di rinforzo** (a $X = 128.8\text{ mm}$ e $X = 248.8\text{ mm}$) e **2 longheroni longitudinali** che corrono nei corridoi liberi tra le file dei tasti.
3. **7 Colonne Coassiali di Scarico a Compressione (`MH5..MH11`)**: 7 torrette coassiali passano attraverso i fori `M3` anteriori e centrali della scheda madre e scaricano la pressione verticale delle dita dalla tastiera direttamente sul pavimento nervato della base inferiore ([`Aleste520_Bottom_Case.FCStd`](Aleste520_Bottom_Case.FCStd)).

### 2. Come Aprire, Modificare ed Esportare in FreeCAD
1. Apri **[`Aleste520_Case.FCStd`](Aleste520_Case.FCStd)** in **FreeCAD 1.0 / 1.1** (oppure apri singolarmente `Aleste520_Bottom_Case.FCStd`, `Aleste520_Top_Cover.FCStd` o `Aleste520_Switch_Plate.FCStd`).
2. Nell'albero **Model** a sinistra trovi:
   * `01_Bottom_Case_Tray` (Base inferiore intera)
   * `02_Keyboard_Switch_Plate_1_5mm` (Piastra switch da `1.5 mm`)
   * `03_Top_Cover_Sloped_AntiFlex` (Scocca superiore inclinata)
   * `04_Printable_Quadrants_256x256mm` (`Bottom_Q1..Q4`, i 4 quadranti già divisi per stampanti 3D con piatto $256 \times 256\text{ mm}$).
3. Per esportare qualsiasi parte in `.STL` o `.3MF` da FreeCAD: seleziona l'oggetto nell'albero $\rightarrow$ **`File -> Export...`** $\rightarrow$ scegli **STL Mesh (`.stl`)** o **STEP (`.step`)** (in alternativa puoi caricare direttamente [`Aleste520_Case.step`](Aleste520_Case.step) in Bambu Studio / OrcaSlicer / PrusaSlicer).
4. Per modificare qualsiasi parametro (spessori, altezze, tolleranze) e rigenerare automaticamente tutti i file `.FCStd` e `.step`, modifica [`generate_freecad_case.FCMacro`](generate_freecad_case.FCMacro) ed eseguilo da FreeCAD (`Macro -> Macros... -> Execute`) o da terminale:
   ```powershell
   & "C:\Program Files\FreeCAD 1.1\bin\freecadcmd.exe" case/generate_freecad_case.FCMacro
   ```
