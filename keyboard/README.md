# Aleste 520EX — Mechanical Keyboard (`keyboard/` — Option 4A)

🌐 **Language / Lingua**: [**🇬🇧 English**](#-english) | [**🇮🇹 Italiano**](#-italiano)

---

## 🇬🇧 English

### 1. Architecture Overview
The Aleste 520EX Mechanical Keyboard (`358.0 × 122.0 mm`) is a 100% Through-Hole (THT) Cherry MX / Gateron compatible mechanical keyboard designed around the native **$11 \times 8$ passive scan matrix (`KM0..KM10` $\times$ `KM11..KM18`) + Hardware `RESET` (`SBRES`)** of the Aleste 520EX motherboard.

* **81 Mechanical Key Switches (`SW1..SW81`, Cherry MX THT)** arranged in 6 ergonomic rows (`19.05 mm` standard $1\text{U}$ pitch), covering the full Aleste 520EX / Amstrad CPC 6128 / MSX2 bilingual keymap (alphanumeric block, `F0..F9` function/numpad block, cursor diamond, `RUS/LAT`, `CAPS`, `CTRL`, `SHIFT`, `COPY`, `ESC`, `STOP`).
* **1 Dedicated Hardware Reset Switch (`SW82` / `SW_RST`, top-right recessed corner)**: pulls `/Periphery/SBRES` (`J2` Pin 9) to `GND` (`J2` Pin 12).
* **81 Series Anti-Ghosting Diodes (`D1..D81`, `1N4148` DO-35 THT)**:
  * Connected in series with each key switch (**Anode** to Row `KM11..KM18`, **Cathode** to Column `KM0..KM10`), providing full **N-Key Rollover (NKRO)** and preventing phantom keys when multiple keys are held down.
* **Standard $2.54\text{ mm}$ ($0.1\text{''}$) Dual-Row Ribbon Connectors (`J1` & `J2`)**:
  * **`J1` (`X8_KB`, `PinHeader_2x06_P2.54mm_Vertical`)**: connects 1:1 via a standard 12-pin $2\times 6$ IDC/DuPont ribbon cable to motherboard connector **`X8`** (`GND` on Pin 1, `KM10..KM0` on Pins 2..12).
  * **`J2` (`X9_KB`, `PinHeader_2x06_P2.54mm_Vertical`)**: connects 1:1 via a standard 12-pin $2\times 6$ IDC/DuPont ribbon cable to motherboard connector **`X9`** (`KM11..KM18` on Pins 1..8, `SBRES` on Pin 9, `GND` on Pin 12).
* **10 `M3` Anti-Flex Mounting Holes (`MH1..MH10`, $\varnothing\ 3.2\text{ mm}$)**:
  * Aligned with the `1.5 mm` metal/FR4 Switch Mounting Plate (`case/keyboard_plate.dxf`) and the internal anti-flex ribs/pillars of the enclosure (`case/Aleste520_Case.scad`).

---

## 🇮🇹 Italiano

### 1. Architettura della Tastiera Meccanica (Opzione 4A)
La tastiera meccanica dell'Aleste 520EX (`358,0 × 122,0 mm`) è un PCB a 2 layer 100% Through-Hole (THT) per switch meccanici **Cherry MX / Gateron**, progettato specificamente sulla **matrice passiva $11 \times 8$ (`KM0..KM10` $\times$ `KM11..KM18`) + pulsante hardware `RESET` (`SBRES`)** della scheda madre Aleste 520EX.

* **81 Switch Meccanici (`SW1..SW81`, Cherry MX THT)** disposti su 6 righe (passo standard $1\text{U} = 19,05\text{ mm}$), che coprono l'intera mappa tasti Aleste 520EX / Amstrad CPC 6128 / MSX2 (blocco alfanumerico, tasti funzione/tastierino `F0..F9`, frecce direzionali, `RUS/LAT`, `CAPS`, `CTRL`, `SHIFT`, `COPY`, `ESC`, `STOP`).
* **1 Pulsante Hardware di Reset (`SW82` / `SW_RST`, angolo superiore destro)**: chiude la linea `/Periphery/SBRES` (`J2` Pin 9) verso `GND` (`J2` Pin 12).
* **81 Diodi Anti-Ghosting in Serie (`D1..D81`, `1N4148` DO-35 THT)**:
  * Ogni tasto ha in serie un diodo `1N4148` (**Anodo** verso la Riga `KM11..KM18`, **Catodo** verso la Colonna `KM0..KM10` attiva bassa pilotata dal `74LS145` `U80`), garantendo il **N-Key Rollover (NKRO)** totale senza pressioni fantasma.
* **Connettori Standard Passo $2,54\text{ mm}$ (`J1` e `J2`, `2x06` IDC / DuPont)**:
  * **`J1` (`X8_KB`, `PinHeader_2x06_P2.54mm_Vertical`)**: si collega 1:1 tramite un normale cavo flat a 12 poli passo $2,54\text{ mm}$ al connettore **`X8`** della scheda madre (`GND` sul Pin 1, `KM10..KM0` sui Pin 2..12).
  * **`J2` (`X9_KB`, `PinHeader_2x06_P2.54mm_Vertical`)**: si collega 1:1 tramite un normale cavo flat a 12 poli passo $2,54\text{ mm}$ al connettore **`X9`** della scheda madre (`KM11..KM18` sui Pin 1..8, `SBRES` sul Pin 9, `GND` sul Pin 12).
* **10 Fori di Fissaggio `M3` Anti-Flessione (`MH1..MH10`, $\varnothing\ 3,2\text{ mm}$)**:
  * Allineati con la piastra switch da `1,5 mm` (`case/keyboard_plate.dxf`) e con le nervature e colonne anti-flessione del case (`case/Aleste520_Case.scad`).
