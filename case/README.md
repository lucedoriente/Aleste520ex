# Aleste 520EX — Custom Enclosure & Anti-Flex Keyboard Support System (`case/`)

🌐 **Language / Lingua**: [**🇬🇧 English**](#-english) | [**🇮🇹 Italiano**](#-italiano)

---

## 🇬🇧 English

### 1. Mechanical Overview
The Aleste 520EX motherboard (`400.91 × 280.51 mm`, L-shaped outline) is housed in a custom two-part desktop wedge enclosure (`411.3 × 290.9 × 64.8 mm` total exterior footprint) modeled in [`Aleste520_Case.scad`](Aleste520_Case.scad) with exported `.stl` meshes and a `.dxf` laser-cut switch plate (`keyboard_plate.dxf`).

### 2. Three-Stage Anti-Flex Keyboard Support System
To prevent any deflection or bounce across the `358 × 122 mm` mechanical keyboard span during typing, the enclosure implements a **three-stage structural support system**:
1. **1.5 mm Rigid Switch Plate (`switch_plate` / `keyboard_plate.dxf`)**:
   * Laser-cut `1.5 mm` aluminum, stainless steel, or FR4 plate with `14.0 × 14.0 mm` Cherry MX switch cutouts and 10 `M3` perimeter/internal countersunk fixing points.
2. **Upper Shell Load-Bearing Ledge & Orthogonal Grid Ribs**:
   * The top cover features a `4.0 × 8.0 mm` continuous reinforced perimeter ledge around the keyboard opening, crossed by **2 transverse ribs** (`X = 114.3 mm`, `247.65 mm`) and **2 longitudinal ribs** (`Y = 38.1 mm`, `76.2 mm`) running directly between key rows/columns underneath the switch plate and keyboard PCB.
3. **7 Coaxial Vertical Compression Pillars (`MH5..MH11` -> Floor)**:
   * Seven $\varnothing\ 7.2\text{ mm}$ coaxial compression columns (`MH5`, `MH6`, `MH7`, `MH8`, `MH9`, `MH10`, `MH11`) transfer typing forces from the underside of the Keyboard PCB straight through the motherboard's `M3` mounting holes down into the bottom base standoffs and desk rubber feet.

### 3. PicoPSU & 220V AC Power Installation
The front-right L-cutout of the motherboard (`X = 297.35..420.0 mm`, `Y = 270.0..300.0 mm`) and the rear-right corner (`X = 365..395 mm`) house the power subsystem:
* **External 220V AC $\rightarrow$ 12V DC Power Brick** (`12V DC, 5A / 60W`, standard $5.5 \times 2.5\text{ mm}$ plug): keeps $220\text{ V AC}$ mains voltage completely outside the computer enclosure for maximum electrical and thermal safety.
* **Rear Panel Mount**: $11.4\text{ mm}$ hole for the PicoPSU `12V DC` barrel jack (`X_pcb = 365 mm`) and $19.4 \times 13.2\text{ mm}$ cutout for the main power rocker switch (`X_pcb = 380 mm`).
* **Motherboard Connections**:
  * PicoPSU `+5V` (Red) $\rightarrow$ **`P1` (`+5V_VCC`)** and **`P5` (`+5V_AUX`)**
  * PicoPSU `GND` (Black) $\rightarrow$ **`P2` (`GND_PWR`)**, **`P6` (`GND_AUX`)**, and **`P4` (`GND_EXP`)**
  * PicoPSU `+12V` (Yellow) $\rightarrow$ **`P3` (`+12V_EXP`)**
  * `CR2032` 3V Coin Cell Holder $\rightarrow$ **`P7` (`BAT+_3V`)** and **`P8` (`BAT-_GND`)**

---

## 🇮🇹 Italiano

### 1. Architettura Meccanica del Case
La scheda madre dell'Aleste 520EX (`400,91 × 280,51 mm`, profilo a L) è alloggiata in un case desktop inclinato in due gusci (`411,3 × 290,9 × 64,8 mm` ingombro esterno totale) progettato parametricamente in [`Aleste520_Case.scad`](Aleste520_Case.scad), completo di file `.stl` pronti per la stampa 3D (sia interi sia divisi nei 4 quadranti `q1..q4` per piatti da $250 \times 250\text{ mm}$) e del file `.dxf` per il taglio laser della piastra tastiera (`keyboard_plate.dxf`).

### 2. Sistema a Triplo Stadio Anti-Flessione per la Tastiera
Per azzerare qualsiasi flessione durante la digitazione sull'intera larghezza della tastiera meccanica (`358 × 122 mm`), il case adotta **tre livelli di irrigidimento strutturale**:
1. **Plate Rigido da 1,5 mm (`switch_plate` / `keyboard_plate.dxf`)**:
   * Piastra da `1,5 mm` (in alluminio, acciaio inox o FR4 tagliato al laser) con scassi standard Cherry MX da `14,0 × 14,0 mm` fissata con 10 viti `M3`.
2. **Cornice Portante Perimetrale e Nervature Ortogonali sotto il Plate**:
   * Il guscio superiore integra un bordo portante continuo da `4,0 × 8,0 mm` attorno al vano tastiera, irrigidito da **2 travi trasversali** (`X = 114,3 mm` e `247,65 mm`) e **2 nervature longitudinali** (`Y = 38,1 mm` e `76,2 mm`) che passano negli spazi tra i tasti sostenendo da sotto sia il plate sia il PCB della tastiera.
3. **7 Colonne Verticali Coassiali di Scarico a Terra (`MH5..MH11` $\rightarrow$ Fondo Case)**:
   * Sette colonne verticali ($\varnothing\ 7,2\text{ mm}$, passanti per `MH5`, `MH6`, `MH7`, `MH8`, `MH9`, `MH10`, `MH11`) scaricano la pressione di battuta della tastiera direttamente sulle colonnine `M3` del fondo del case e sui piedini in gomma appoggiati sulla scrivania, impedendo qualsiasi flessione sia della tastiera sia della scheda madre sottostante.

### 3. Alimentazione con PicoPSU e Collegamento alla Rete 220V AC
Lo scalino a L della scheda madre (`X = 297,35..420,0 mm`, `Y = 270,0..300,0 mm`) e il pannello posteriore destro (`X = 365..395 mm`) ospitano il gruppo di alimentazione:
* **Alimentatore Esterno $220\text{ V AC} \rightarrow 12\text{ V DC}$ (`12V 5A / 60W` stile notebook)**: trasforma la $220\text{ V AC}$ di rete all'esterno del case in $12\text{ V DC}$ stabilizzati. In questo modo **nessuna tensione pericolosa a $220\text{ V AC}$ entra nel computer** e non si genera calore all'interno del case.
* **Pannello Posteriore**: foro da $\varnothing\ 11,4\text{ mm}$ per il connettore DC Barrel Jack della PicoPSU (`X_pcb = 365 mm`) e scasso da $19,4 \times 13,2\text{ mm}$ per l'interruttore generale a bilanciere (`X_pcb = 380 mm`), che interrompe il positivo `+12V DC` in ingresso alla PicoPSU (oppure il filo verde `PS_ON#` verso `GND` del connettore ATX).
* **Collegamento dalla PicoPSU alla Scheda Madre**:
  * Filo Rosso (`+5V` dal cavo Molex/ATX della PicoPSU) $\rightarrow$ **`P1` (`+5V_VCC`)** e **`P5` (`+5V_AUX`)**
  * Filo Nero (`GND` dal cavo Molex/ATX della PicoPSU) $\rightarrow$ **`P2` (`GND_PWR`)**, **`P6` (`GND_AUX`)** e **`P4` (`GND_EXP`)**
  * Filo Giallo (`+12V` dal cavo Molex/ATX della PicoPSU) $\rightarrow$ **`P3` (`+12V_EXP`)**
  * Portabatteria `CR2032` ($3\text{ V}$) per orologio/impostazioni BIOS $\rightarrow$ **`P7` (`BAT+_3V`)** e **`P8` (`BAT-_GND`)**
