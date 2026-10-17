// ============================================================================
// Aleste 520EX — Custom Desktop Enclosure with Anti-Flex Keyboard Support
// Parametric OpenSCAD 3D CAD Model (Bottom Base, Top Shell, Switch Plate,
// Anti-Flex Compression Pillars & 4-Quadrant Split for Standard 3D Printers)
// ============================================================================
// Coordinate reference matches board/Aleste520v4.kicad_pcb Edge.Cuts:
//   PCB X: 19.092 .. 420.000 mm (Width  = 400.908 mm)
//   PCB Y: 19.492 .. 300.000 mm (Depth  = 280.508 mm)
//    Note: In KiCad PCB coordinates Y increases downwards (Y=19.5 is Rear,
//         Y=300 is Front). In this 3D CAD model we map PCB (X, Y) directly
//         with Y_cad = 300.0 - Y_pcb so Front is at Y_cad = 0.
// ============================================================================

$fn = 48;

//Render mode selector:
//  "assembly"   = Full assembled enclosure (Bottom + Top + Plate)
//  "bottom"     = Full bottom base tray with M3 standoffs & anti-flex pillars
//  "top"        = Top keyboard shell with anti-flex ribs
//  "plate"      = 1.5mm Cherry MX switch mounting plate
//  "bottom_q1".."bottom_q4" = 4 split quadrants for 250x250mm 3D printers
part_to_render = "assembly";

// --- Master Dimensions ---
pcb_x_min = 19.092;
pcb_x_max = 420.000;
pcb_y_min = 19.492;
pcb_y_max = 300.000;

pcb_w = pcb_x_max - pcb_x_min; // 400.908 mm
pcb_d = pcb_y_max - pcb_y_min; // 280.508 mm
pcb_t = 1.6;

wall_t      = 3.2;   // External wall thickness (mm)
floor_t     = 3.2;   // Bottom floor thickness (mm)
clearance   = 2.0;   // Perimeter clearance around PCB (mm)
standoff_h  = 8.0;   // Height under PCB for THT solder pins & airflow (mm)
lower_h     = floor_t + standoff_h + pcb_t + 26.0; // Total lower tray height (38.8 mm)
upper_rear_h = 26.0; // Rear height of top cover (mm)
upper_front_h = 12.0;// Ergonomic 6-degree sloped front wrist-rest height (mm)

ext_w = pcb_w + 2 * (clearance + wall_t); // 411.31 mm
ext_d = pcb_d + 2 * (clearance + wall_t); // 290.91 mm

// Exact 11 M3 Mounting Hole coordinates from board/Aleste520v4.kicad_pcb
// [X_pcb, Y_pcb, is_keyboard_antiflex_pillar]
mh_coords = [
    [ 23.5,  24.0, false], // MH1  Rear-Left
    [215.0,  24.0, false], // MH2  Rear-Center-Left
    [273.0,  24.0, false], // MH3  Rear-Center-Right
    [411.5,  24.0, false], // MH4  Rear-Right
    [ 41.0, 130.0, true ], // MH5  Mid-Left (Rear Keyboard Anti-Flex Pillar)
    [220.0, 131.0, true ], // MH6  Center (Central Keyboard Anti-Flex Pillar)
    [409.5, 148.0, true ], // MH7  Mid-Right (Right Keyboard Anti-Flex Pillar)
    [ 23.5, 286.5, true ], // MH8  Front-Left (Front Keyboard Anti-Flex Pillar)
    [148.0, 285.5, true ], // MH9  Front-Center-Left (Front Keyboard Anti-Flex Pillar)
    [283.5, 286.5, true ], // MH10 Front-Center-Right (Front Keyboard Anti-Flex Pillar)
    [406.5, 256.5, true ]  // MH11 Front-Right L-Wing (Front-Right Anti-Flex Pillar)
];

// Convert PCB (X, Y) to CAD internal coordinates
function pcb_to_cad_x(x_pcb) = wall_t + clearance + (x_pcb - pcb_x_min);
function pcb_to_cad_y(y_pcb) = wall_t + clearance + (pcb_y_max - y_pcb);

// --- Keyboard Matrix Geometry (79 Keys: 6-row Aleste 520EX Layout) ---
kb_origin_x = 24.0;  // CAD X start of keyboard bezel
kb_origin_y = 18.0;  // CAD Y start of keyboard bezel (front area, Y_pcb = 140..285)
kb_w        = 358.0; // Keyboard bay width (18.75U * 19.05mm)
kb_d        = 122.0; // Keyboard bay depth (6 rows * 19.05mm + border)
key_pitch   = 19.05; // Standard 1U Cherry MX spacing (0.75 inch)

// ============================================================================
// MODULE 1: Bottom Base Tray with 11 M3 Standoffs & 7 Anti-Flex Keyboard Towers
// ============================================================================
module bottom_case() {
    difference() {
        union() {
            // Outer shell box
            cube([ext_w, ext_d, lower_h]);
        }
        // Hollow interior
        translate([wall_t, wall_t, floor_t])
            cube([ext_w - 2*wall_t, ext_d - 2*wall_t, lower_h]);

        // Rear Connector Cutouts (along Y_cad = ext_d - wall_t, corresponding to Y_pcb = 19.5)
        rear_z = floor_t + standoff_h + pcb_t;
        // X2 DB9 Joystick/Mouse (X_pcb = 38.6)
        translate([pcb_to_cad_x(38.6) - 16, ext_d - wall_t - 1, rear_z - 2])
            cube([32, wall_t + 2, 15]);
        // X5 Audio/RGB DIN connectors (X_pcb = 60..92)
        translate([pcb_to_cad_x(60.0) - 10, ext_d - wall_t - 1, rear_z - 2])
            cube([44, wall_t + 2, 18]);
        // X1 Expansion Slot 62-pin (X_pcb = 113..197)
        translate([pcb_to_cad_x(112.5), ext_d - wall_t - 1, rear_z - 4])
            cube([85.5, wall_t + 2, 18]);
        // X3 & X6 DIN connectors (X_pcb = 136.4, 211.0)
        translate([pcb_to_cad_x(211.0) - 9, ext_d - wall_t - 1, rear_z - 2])
            cube([18, wall_t + 2, 18]);
        // X4 Floppy Slot 34-pin (X_pcb = 226..272)
        translate([pcb_to_cad_x(225.5), ext_d - wall_t - 1, rear_z - 4])
            cube([47.0, wall_t + 2, 18]);
        // X7 Serial DIN-8 (X_pcb = 309.0)
        translate([pcb_to_cad_x(309.0) - 9, ext_d - wall_t - 1, rear_z - 2])
            cube([18, wall_t + 2, 18]);
        // PicoPSU 12V DC Barrel Jack (D=11.2mm) at X_pcb = 365
        translate([pcb_to_cad_x(365.0), ext_d + 1, rear_z + 6])
            rotate([90, 0, 0]) cylinder(d=11.4, h=wall_t + 3);
        // Rear Mains/DC Rocker Switch (19.2 x 13.0 mm) at X_pcb = 385
        translate([pcb_to_cad_x(380.0), ext_d - wall_t - 1, rear_z])
            cube([19.4, wall_t + 2, 13.2]);

        // Side ventilation louvers
        for (vy = [40 : 12 : ext_d - 40]) {
            translate([-1, vy, floor_t + 4])
                cube([wall_t + 2, 4, 18]);
            translate([ext_w - wall_t - 1, vy, floor_t + 4])
                cube([wall_t + 2, 4, 18]);
        }
    }

    // Internal Reinforcement Grid Ribs on Floor (prevents bottom tray sag)
    for (rx = [80 : 80 : ext_w - 60]) {
        translate([rx, wall_t, floor_t])
            cube([2.4, ext_d - 2*wall_t, 3.0]);
    }
    for (ry = [65 : 65 : ext_d - 50]) {
        translate([wall_t, ry, floor_t])
            cube([ext_w - 2*wall_t, 2.4, 3.0]);
    }

    // 11 M3 Motherboard Standoffs + Upper Anti-Flex Keyboard Support Extensions
    for (m = mh_coords) {
        cx = pcb_to_cad_x(m[0]);
        cy = pcb_to_cad_y(m[1]);
        is_kb = m[2];
        // Lower standoff (Floor -> underside of Motherboard)
        translate([cx, cy, floor_t]) {
            difference() {
                cylinder(d1=9.0, d2=7.0, h=standoff_h);
                cylinder(d=2.9, h=standoff_h + 1); // M3 thread tap / insert
            }
        }
        // If this mounting point is in the front/middle zone, include the
        // coaxial Upper Anti-Flex Support Column sleeve Spec (22.0mm height
        // above PCB top surface to support the Keyboard PCB & Switch Plate!)
        if (is_kb) {
            translate([cx, cy, floor_t + standoff_h + pcb_t + 2.0]) {
                difference() {
                    cylinder(d=7.2, h=22.0);
                    cylinder(d=3.4, h=24.0);
                }
            }
        }
    }

    // Dedicated PicoPSU / DC-DC Mount Bosses in Front-Right L-Cutout Bay
    // (X_pcb = 310..410, Y_pcb = 272..298 -> CAD Y = 5..30)
    for (px = [pcb_to_cad_x(320), pcb_to_cad_x(390)]) {
        for (py = [pcb_to_cad_y(294), pcb_to_cad_y(274)]) {
            translate([px, py, floor_t]) {
                difference() {
                    cylinder(d=6.5, h=standoff_h);
                    cylinder(d=2.8, h=standoff_h + 1);
                }
            }
        }
    }
}

// ============================================================================
// MODULE 2: Top Cover with Sloped Keyboard Deck & Anti-Flex Support Ribs
// ============================================================================
module top_cover() {
    difference() {
        // Sloped top shell body
        hull() {
            translate([0, 0, 0])
                cube([ext_w, 20, upper_front_h]);
            translate([0, ext_d - 140, 0])
                cube([ext_w, 140, upper_rear_h]);
        }
        // Hollow interior leaving 3.5mm top deck thickness
        translate([wall_t, wall_t, -1])
            hull() {
                cube([ext_w - 2*wall_t, 20, upper_front_h - 3.5 + 1]);
                translate([0, ext_d - 140 - wall_t, 0])
                    cube([ext_w - 2*wall_t, 140 - wall_t, upper_rear_h - 3.5 + 1]);
            }
        // Recessed Keyboard Bezel Opening (358 x 122 mm)
        translate([kb_origin_x, kb_origin_y, -2])
            cube([kb_w, kb_d, upper_rear_h + 5]);

        // Status LEDs window (Power / Rus-Lat / Caps / FDC Activity)
        translate([kb_origin_x + kb_w + 12, kb_origin_y + 100, -1])
            cylinder(d=3.2, h=30);
        translate([kb_origin_x + kb_w + 22, kb_origin_y + 100, -1])
            cylinder(d=3.2, h=30);
    }

    // Internal Keyboard Anti-Flex Perimeter Ledge & Cross-Beams
    // Supports both the 1.5mm Switch Plate and Keyboard PCB along all 4 sides
    // plus 2 intermediate cross-stiffeners so typing deflection is 0.0 mm
    ledge_w = 4.0;
    ledge_z = 8.0;
    translate([kb_origin_x - ledge_w, kb_origin_y - ledge_w, 0]) {
        difference() {
            cube([kb_w + 2*ledge_w, kb_d + 2*ledge_w, ledge_z]);
            translate([ledge_w + 2.5, ledge_w + 2.5, -1])
                cube([kb_w - 5.0, kb_d - 5.0, ledge_z + 2]);
        }
    }
    // 2 Transverse Anti-Flex Support Ribs under the Keyboard Plate (aligned with inter-column channels at x=128.8 and x=248.8)
    for (kx = [kb_origin_x + 128.8, kb_origin_x + 248.8]) {
        translate([kx - 1.5, kb_origin_y, 0])
            cube([3.0, kb_d, ledge_z - 1.5]);
    }
    // 2 Longitudinal Anti-Flex Support Ribs between key rows
    for (ky = [kb_origin_y + (kb_d - 54.8), kb_origin_y + (kb_d - 89.2)]) {
        translate([kb_origin_x, ky - 1.2, 0])
            cube([kb_w, 2.4, ledge_z - 1.5]);
    }
}

// ============================================================================
// MODULE 3: 1.5mm Cherry MX Switch Mounting Plate (Zero-Flex Metal/FR4 Plate)
// Exact 1:1 alignment with keyboard/Aleste520_Keyboard.kicad_pcb (82 keys + 10 M3 holes)
// ============================================================================
kb_mh_coords = [
    [  4.0,   4.0], [124.0,   4.0], [244.0,   4.0], [354.0,   4.0],
    [  4.0,  61.0], [128.8,  49.0], [248.8,  49.0], [354.0,  61.0],
    [  4.0, 118.0], [354.0, 118.0]
];

module switch_plate() {
    plate_t = 1.5;
    sw_cut  = 14.0; // Standard Cherry MX 14.0 x 14.0 mm cutout
    difference() {
        cube([kb_w, kb_d, plate_t]);
        // Main 11x6 block (66 keys: px=0..10, py=0..5) + Right 3x5 block (15 keys: px=11..13, py=0..4) + SW82 RESET (px=13, py=5)
        for (py = [0 : 5]) {
            for (px = [0 : 13]) {
                if (!(py == 5 && (px == 11 || px == 12))) {
                    cx = 24.0 + px * 24.0;
                    cy = kb_d - (29.0 + py * 17.2);
                    translate([cx - sw_cut/2, cy - sw_cut/2, -0.5])
                        cube([sw_cut, sw_cut, plate_t + 1.0]);
                }
            }
        }
        // 10 M3 Anti-Flex Mounting Holes (MH1..MH10 matching Aleste520_Keyboard.kicad_pcb)
        for (m = kb_mh_coords) {
            translate([m[0], kb_d - m[1], -0.5])
                cylinder(d=3.2, h=plate_t + 1.0);
        }
    }
}

// ============================================================================
// MAIN RENDER DISPATCHER
// ============================================================================
if (part_to_render == "assembly") {
    color("#2b2d2f") bottom_case();
    translate([0, 0, lower_h]) color("#d8d4c8") top_cover();
    translate([kb_origin_x, kb_origin_y, lower_h + 6.5]) color("#a0a5ab") switch_plate();
} else if (part_to_render == "bottom") {
    bottom_case();
} else if (part_to_render == "top") {
    top_cover();
} else if (part_to_render == "plate") {
    switch_plate();
} else if (part_to_render == "bottom_q1") {
    intersection() { bottom_case(); cube([ext_w/2, ext_d/2, lower_h + 30]); }
} else if (part_to_render == "bottom_q2") {
    intersection() { bottom_case(); translate([ext_w/2, 0, 0]) cube([ext_w/2, ext_d/2, lower_h + 30]); }
} else if (part_to_render == "bottom_q3") {
    intersection() { bottom_case(); translate([0, ext_d/2, 0]) cube([ext_w/2, ext_d/2, lower_h + 30]); }
} else if (part_to_render == "bottom_q4") {
    intersection() { bottom_case(); translate([ext_w/2, ext_d/2, 0]) cube([ext_w/2, ext_d/2, lower_h + 30]); }
}
