// DPRX WORKSTATION - MASTER PROJECT FILE (70 mm totali: 25 Top / 45 Bottom)
PART = "top"; // ["top", "bottom_brackets", "bracket", "bottom", "assembly"]
$fn = $preview ? 40 : 80;

width = 320.0; depth = 320.0; wall = 3.2; edge_r = 2.0;
height_top = 25.0; height_bot = 45.0; 
lip_h = 2.5; lip_w = 1.4; lip_clr = 0.25; groove_wall = 1.8;
text_depth = 1.0; cut_h = wall + 10.0;

screen_frame_w = 235.0; screen_frame_d = 143.0; screen_thick = 5.0;
screen_view_w = 226.0; screen_view_d = 128.0; bezel_left = 3.5; bezel_bottom = 7.5;
screen_frame_x = 81.5; screen_frame_y = 145.0;
screen_view_x = screen_frame_x + bezel_left; screen_view_y = screen_frame_y + bezel_bottom;
clamp_boss_x = 91.0; clamp_boss_y_bot = screen_frame_y - 9.5;
clamp_boss_y_top = screen_frame_y + screen_frame_d + 9.5;
clamp_pitch_y = clamp_boss_y_top - clamp_boss_y_bot; clamp_boss_h = screen_thick;

// BLOCCO PARAMETRI LAFVIN
lavfin_pcb_w = 156.90; lavfin_pcb_d = 106.96; 
lavfin_hole_dx = 156.90; lavfin_hole_dy = 114.96;
lavfin_glass_w = 157.00; lavfin_glass_d = 99.00; lavfin_glass_tol = 1.0;
lavfin_stack_h = 7.5; lavfin_pcb_th = 2.0; lavfin_flush_off = lavfin_stack_h - wall; // 4.3 mm

// SIMMETRIA RIPRISTINATA: Il centro dei fori coincide col centro del vetro
lavfin_cx = 198.0; 
lavfin_cy = 72.0; 
lavfin_holes_cx = lavfin_cx; 

bezel_th_bot = 3.0;
lavfin_clamp_gap = (lavfin_stack_h + lavfin_pcb_th) - wall; // 6.3 mm

// LPD8 PCB Dimensions & Origin
lpd_w = 71.5; lpd_d = 289.0; lpd_x0 = 5.0; lpd_y0 = (depth - lpd_d) / 2;

// VARIABILI ESTETICHE APERTURE LPD8 (Spostate sopra per calcolare i centri)
btn_w = 11.3; btn_d = 11.3; btn_pitch_x = 11.3 + 3.8; btn_pitch_y = 11.3 + 3.8;
btn_base_x = lpd_x0 + 40.8; 
btn_base_y = lpd_y0 + 5.8;  

pad_hole = 28.8; pad_pitch_x = 28.8 + 6.3; pad_pitch_y = 28.8 + 6.3;
pads_base_x = lpd_x0 + 4.5; 
pads_base_y = btn_base_y + btn_pitch_y + btn_d + 9.8; 

rib_thick = 1.2; rib_h = 6.0; akai_boss_h = 8.0;
knob_hole = 16.2; knob_pitch_x = 34.5; knob_pitch_y = 27.5;
knobs_base_x = lpd_x0 + 19.0; knobs_base_y = 212.0;

// COORDINATE TORRETTE MECCANICHE LPD8
lpd_boss1_x = lpd_x0 + 54.0; 
lpd_boss1_y = lpd_y0 + 19.0;

// Allineamento dinamico basato sul centro reale dei pad e dei separatori
lpd_boss_pad_x = pads_base_x + pad_hole + (pad_pitch_x - pad_hole) / 2; 
lpd_boss_pad_y_start = pads_base_y + pad_hole + (pad_pitch_y - pad_hole) / 2; 

lpd_boss_knob_x_1 = lpd_x0 + 18.25; 
lpd_boss_knob_x_2 = lpd_x0 + 53.25; 
lpd_boss_knob_y_1 = lpd_y0 + 209.0; 
lpd_boss_knob_y_2 = lpd_y0 + 266.0; 

wyse_w = 184.0; wyse_d = 184.0; wyse_h = 35.6; wyse_x = width - wall - wyse_w; wyse_y = 14.0; wyse_vesa_off = 54.5;

// BLOCCO PARAMETRI Z M-AUDIO
ma_raise = 5.0;
ma_boss_h = 1.5 + ma_raise;

z_ma_pcb_base = wall + ma_boss_h; 
z_pcb_top = z_ma_pcb_base + 1.6;
z_jacks = z_pcb_top + 8.2; 
z_xlr = z_pcb_top + 13.5; 
z_btn = z_pcb_top + 8.0;
z_leds = z_pcb_top + 6.0; 
z_pwr_led = z_pcb_top + 8.0;

m_audio_pcb_w = 130.0; m_audio_pcb_d = 89.0; 
m_audio_x = 176.0; m_audio_y = depth - wall - m_audio_pcb_d;

ma_hole_x_left = m_audio_x + 9.0;              
ma_hole_x_right = ma_hole_x_left + 112.0;      
ma_hole_y_front = depth - wall - 12.0;         
ma_hole_y_rear = ma_hole_y_front - 73.0;       

// Coordinate pannello I/O M-Audio
led_48v_x = 294.5; 
xlr_x = 276.5; 
mic_led_x = 254.0;    
guitar_x = 242.0;     
gtr_led_x = 226.5;    
direct_btn_x = 218.0; 
phones_x = 202.0;     
pwr_led_x = 187.0;    

// BLOCCO PARAMETRI SCHEDA VIDEO E CONTROLLER
vid_w = 82.0; vid_d = 60.0; vid_x = 18.0; vid_y = depth - wall - vid_d - 5.0;
vid_hole_dx = 76.0; vid_hole_dy = 54.5; 
vid_boss_h = 20.0; // Rialzato di 15 mm per far passare i cavi video

// CONTROLLER VIDEO (Ingombro 107x15, disposto orizzontalmente)
// Posizione globale dell'intero blocchetto spostata a destra di 5 mm (wall + 3.0 + 5.0)
ctrl_base_x = wall + 8.0;        
ctrl_base_y = vid_y - 20.0;      // Ripristinata la distanza a -20.0

// Offset stimato del primo foro rispetto all'inizio della schedina
ctrl_hole_off_x = 7.0; 
ctrl_hole_y = ctrl_base_y + 7.5; // Centrato nello spessore di 15mm

// Coordinate interassi
ctrl_hole_x1 = ctrl_base_x + ctrl_hole_off_x;
ctrl_hole_x2 = ctrl_hole_x1 + 37.0;
ctrl_hole_x3 = ctrl_hole_x1 + 93.0; // 37 + 56 = 93

gx16_d = 16.3; gx16_y = 35.0; 

module rounded_box(w, d, h, r) { hull() {
    translate([r, r, 0]) cylinder(r=r, h=0.5); translate([w-r, r, 0]) cylinder(r=r, h=0.5);
    translate([w-r, d-r, 0]) cylinder(r=r, h=0.5); translate([r, d-r, 0]) cylinder(r=r, h=0.5);
    translate([r, r, h-r]) sphere(r=r); translate([w-r, r, h-r]) sphere(r=r);
    translate([w-r, d-r, h-r]) sphere(r=r); translate([r, d-r, h-r]) sphere(r=r);
}}
module bottom_box(w, d, h, r) { hull() {
    translate([r, r, 0]) cylinder(r=r, h=h); translate([w-r, r, 0]) cylinder(r=r, h=h);
    translate([w-r, d-r, 0]) cylinder(r=r, h=h); translate([r, d-r, 0]) cylinder(r=r, h=h);
}}
module cable_tie_mount(x, y, rot_z=0) { mount_w=8.0; mount_len=10.0; mount_h=3.8; slot_w=4.5; slot_h=2.0;
    translate([x, y, wall-0.4]) rotate([0, 0, rot_z]) difference() {
        hull() { translate([-mount_w/2, -mount_len/2, 0]) cube([mount_w, mount_len, 0.5]);
                 translate([-mount_w/2+0.6, -mount_len/2+0.6, mount_h+0.4-0.5]) cube([mount_w-1.2, mount_len-1.2, 0.5]); }
        translate([-mount_w, -slot_w/2, 0.8+0.4]) cube([mount_w*2, slot_w, slot_h]);
}}
module top_cable_tie_mount(x, y, rot_z=0) { mount_w=8.0; mount_len=10.0; mount_h=3.8; slot_w=4.5; slot_h=2.0;
    translate([x, y, height_top-wall+0.4]) rotate([0, 180, rot_z]) difference() {
        hull() { translate([-mount_w/2, -mount_len/2, 0]) cube([mount_w, mount_len, 0.5]);
                 translate([-mount_w/2+0.6, -mount_len/2+0.6, mount_h+0.4-0.5]) cube([mount_w-1.2, mount_len-1.2, 0.5]); }
        translate([-mount_w, -slot_w/2, 0.8+0.4]) cube([mount_w*2, slot_w, slot_h]);
}}
module corner_boss_top_solid(x, y, rot_z) { boss_od=10.0; boss_h=height_top-wall+0.5; translate([x, y, 0]) rotate([0, 0, rot_z]) { cylinder(d=boss_od, h=boss_h); translate([-1.0, 0, 0]) rotate([0, 0, 45]) cube([boss_od, 2.5, boss_h]); }}
module corner_boss_bottom_solid(x, y, rot_z) { boss_od=12.0; boss_h=height_bot; translate([x, y, 0]) rotate([0, 0, rot_z]) { cylinder(d=boss_od, h=boss_h); translate([-1.0, 0, 0]) rotate([0, 0, 45]) cube([boss_od, 2.5, boss_h]); }}
module standoff_boss(x, y, d_hole, d_ext=6.0, h=5.0) { translate([x, y, wall-0.4]) difference() { cylinder(d=d_ext, h=h+0.4); translate([0, 0, -0.5]) cylinder(d=d_hole, h=h+1.5); }}
module alignment_peg(x, y, d_peg=3.0, h=10.0) { translate([x, y, wall-0.4]) cylinder(d=d_peg, h=h+0.4); } // Pin solido per colla a caldo
module screen_bracket_boss_solid(x, y) { translate([x, y, height_top-wall-clamp_boss_h]) cylinder(d=8.0, h=clamp_boss_h+0.5); }
module akai_pcb_boss_solid(x, y) { translate([x, y, height_top-wall-akai_boss_h]) cylinder(d=5.5, h=akai_boss_h+0.5); }
module vent_slot_wall_x(x_pos, y_pos, z_pos, len_y, h_z) { translate([x_pos, y_pos, z_pos]) hull() { translate([0, -len_y/2+h_z/2, 0]) rotate([0, 90, 0]) cylinder(d=h_z, h=wall*4, center=true); translate([0, len_y/2-h_z/2, 0]) rotate([0, 90, 0]) cylinder(d=h_z, h=wall*4, center=true); }}
module vent_slot_wall_y(x_pos, y_pos, z_pos, len_x, h_z) { translate([x_pos, y_pos, z_pos]) hull() { translate([-len_x/2+h_z/2, 0, 0]) rotate([90, 0, 0]) cylinder(d=h_z, h=wall*4, center=true); translate([len_x/2-h_z/2, 0, 0]) rotate([90, 0, 0]) cylinder(d=h_z, h=wall*4, center=true); }}
module floor_slot_x(x_mid, y_pos, len_x, slot_w) { translate([x_mid, y_pos, -1.0]) hull() { translate([-len_x/2+slot_w/2, 0, 0]) cylinder(d=slot_w, h=wall+2.0); translate([len_x/2-slot_w/2, 0, 0]) cylinder(d=slot_w, h=wall+2.0); }}
module rear_text(x_pos, z_pos, text_str, text_sz=2.0) { translate([x_pos, depth+0.1, z_pos]) mirror([1, 0, 0]) rotate([90, 0, 0]) linear_extrude(height=text_depth+0.2) text(text_str, size=text_sz, font="Liberation Sans:style=Bold", halign="center", valign="center"); }
module left_text(y_pos, z_pos, text_str, text_sz=2.0) { translate([-0.1, y_pos, z_pos]) rotate([90, 0, 90]) mirror([1, 0, 0]) linear_extrude(height=text_depth+0.2) text(text_str, size=text_sz, font="Liberation Sans:style=Bold", halign="center", valign="center"); }
module knob_faceplate_engraving(kx, ky, label_str) { translate([kx, ky+13.5, height_top-text_depth]) linear_extrude(height=text_depth+0.2) text(label_str, size=2.6, font="Liberation Sans:style=Bold", halign="center", valign="center"); }

module lavfin_bottom_brackets() {
    bracket_w = 170.0; bracket_d = 12.0;
    for (sy = [-1, 1]) {
        y_center = sy * (lavfin_hole_dy / 2);
        difference() {
            translate([-bracket_w/2, y_center - bracket_d/2, 0]) bottom_box(bracket_w, bracket_d, bezel_th_bot, 2.0);
            for (sx = [-1, 1]) {
                translate([sx * (lavfin_hole_dx/2), y_center, -1.0]) {
                    cylinder(d = 3.4, h = bezel_th_bot + 2.0);
                    translate([0, 0, 0.9]) cylinder(d1 = 7.0, d2 = 3.4, h = 2.0);
                }
            }
        }
    }
}

module top_panel() {
    guide_shelf_th = 1.5; guide_wall_x = screen_frame_x + screen_frame_w;
    
    pad_area_w = pad_pitch_x + pad_hole; pad_area_d = 3 * pad_pitch_y + pad_hole;
    btn_area_w = btn_pitch_x + btn_w; btn_area_d = btn_pitch_y + btn_d;
    center_x_mid = pads_base_x + pad_hole + (pad_pitch_x - pad_hole) / 2;
    btn_mid_x = btn_base_x + btn_w + (btn_pitch_x - btn_w)/2; 
    btn_mid_y = btn_base_y + btn_d + (btn_pitch_y - btn_d)/2;
    
    difference() {
        union() {
            difference() {
                rounded_box(width, depth, height_top, edge_r);
                translate([wall, wall, -1.0]) cube([width-2*wall, depth-2*wall, height_top-wall+1.0]);
                translate([groove_wall, groove_wall, -0.5]) cube([width-2*groove_wall, depth-2*groove_wall, lip_h+0.8]);
            }
            corner_boss_top_solid(wall+4, wall+4, 0); corner_boss_top_solid(width-wall-4, wall+4, 90);
            corner_boss_top_solid(width-wall-4, depth-wall-4, 180); corner_boss_top_solid(wall+4, depth-wall-4, 270);
            translate([guide_wall_x, screen_frame_y-1.0, height_top-wall-screen_thick]) cube([(width-wall)-guide_wall_x+0.1, screen_frame_d+2.0, screen_thick+0.5]);
            
            translate([guide_wall_x-10.0, screen_frame_y-1.0, height_top-wall-screen_thick-guide_shelf_th]) cube([(width-wall)-guide_wall_x+10.1, screen_frame_d+2.0, guide_shelf_th]);
            
            screen_bracket_boss_solid(clamp_boss_x, clamp_boss_y_bot); screen_bracket_boss_solid(clamp_boss_x, clamp_boss_y_top);
            
            for (dx=[-lavfin_hole_dx/2, lavfin_hole_dx/2], dy=[-lavfin_hole_dy/2, lavfin_hole_dy/2]) {
                translate([lavfin_holes_cx+dx, lavfin_cy+dy, height_top-wall-lavfin_flush_off]) cylinder(d=7.0, h=lavfin_flush_off+0.1);
            }
            
            translate([screen_frame_x, screen_frame_y-3.5, height_top-wall-4.0]) hull() { translate([0, 1.9, 0]) cube([screen_frame_w, 0.1, 0.1]); translate([0, 0, 4.0]) cube([screen_frame_w, 2.0, 0.5]); }
            translate([screen_frame_x, screen_frame_y+screen_frame_d+1.5, height_top-wall-4.0]) hull() { translate([0, 0, 0]) cube([screen_frame_w, 0.1, 0.1]); translate([0, 0, 4.0]) cube([screen_frame_w, 2.0, 0.5]); }
            
            translate([center_x_mid-rib_thick/2, pads_base_y-1.0, height_top-wall-rib_h]) cube([rib_thick, pad_area_d+2.0, rib_h+0.5]);
            for (r=[0:2]) { y_rib_mid=pads_base_y+r*pad_pitch_y+pad_hole+(pad_pitch_y-pad_hole)/2; translate([pads_base_x-1.0, y_rib_mid-rib_thick/2, height_top-wall-rib_h]) cube([pad_area_w+2.0, rib_thick, rib_h+0.5]); }
            translate([pads_base_x-1.5, pads_base_y-1.5, height_top-wall-rib_h]) difference() { 
                bottom_box(pad_area_w+3.0, pad_area_d+3.0, rib_h+0.5, 2.5); 
                translate([rib_thick, rib_thick, -0.5]) bottom_box(pad_area_w+3.0-2*rib_thick, pad_area_d+3.0-2*rib_thick, rib_h+1.5, 1.3); 
            }
            
            translate([btn_mid_x-rib_thick/2, btn_base_y-1.0, height_top-wall-rib_h]) cube([rib_thick, btn_area_d+2.0, rib_h+0.5]);
            translate([btn_base_x-1.0, btn_mid_y-rib_thick/2, height_top-wall-rib_h]) cube([btn_area_w+2.0, rib_thick, rib_h+0.5]);
            translate([btn_base_x-1.5, btn_base_y-1.5, height_top-wall-rib_h]) difference() { 
                bottom_box(btn_area_w+3.0, btn_area_d+3.0, rib_h+0.5, 2.5); 
                translate([rib_thick, rib_thick, -0.5]) bottom_box(btn_area_w+3.0-2*rib_thick, btn_area_d+3.0-2*rib_thick, rib_h+1.5, 1.3); 
            }
            
            akai_pcb_boss_solid(lpd_boss1_x, lpd_boss1_y);
            // TORRETTE AGGIORNATE CON IL NUOVO PITCH
            for (i=[0:2]) akai_pcb_boss_solid(lpd_boss_pad_x, lpd_boss_pad_y_start + i*pad_pitch_y);
            akai_pcb_boss_solid(lpd_boss_knob_x_1, lpd_boss_knob_y_1);
            akai_pcb_boss_solid(lpd_boss_knob_x_2, lpd_boss_knob_y_1);
            akai_pcb_boss_solid(lpd_boss_knob_x_1, lpd_boss_knob_y_2);
            akai_pcb_boss_solid(lpd_boss_knob_x_2, lpd_boss_knob_y_2);
            
            top_cable_tie_mount(98.0, 50.0, 90); top_cable_tie_mount(98.0, 90.0, 90); top_cable_tie_mount(98.0, 130.0, 90);
        }
        for (cx=[wall+4, width-wall-4], cy=[wall+4, depth-wall-4]) translate([cx, cy, -0.1]) cylinder(d=2.5, h=16.0);
        for (by=[clamp_boss_y_bot, clamp_boss_y_top]) translate([clamp_boss_x, by, height_top-wall-clamp_boss_h-0.2]) cylinder(d=2.5, h=clamp_boss_h+1.0);
        
        translate([lavfin_cx-(lavfin_glass_w+lavfin_glass_tol)/2, lavfin_cy-(lavfin_glass_d+lavfin_glass_tol)/2, height_top-wall-1.0]) cube([lavfin_glass_w+lavfin_glass_tol, lavfin_glass_d+lavfin_glass_tol, cut_h]);
        
        for (dx=[-lavfin_hole_dx/2, lavfin_hole_dx/2], dy=[-lavfin_hole_dy/2, lavfin_hole_dy/2]) {
            translate([lavfin_holes_cx+dx, lavfin_cy+dy, height_top-wall-lavfin_flush_off-0.1]) cylinder(d=2.4, h=lavfin_flush_off+wall-0.8);
        }
        translate([screen_view_x, screen_view_y, height_top-wall-1.0]) cube([screen_view_w, screen_view_d, cut_h]);
        
        for (r=[0:1], c=[0:1]) translate([btn_base_x+c*btn_pitch_x, btn_base_y+r*btn_pitch_y, height_top-wall-1.0]) cube([btn_w, btn_d, cut_h]);
        
        translate([lpd_boss1_x, lpd_boss1_y, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        // FORI TORRETTE AGGIORNATI CON IL NUOVO PITCH
        for (i=[0:2]) {
            translate([lpd_boss_pad_x, lpd_boss_pad_y_start + i*pad_pitch_y, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        }
        translate([lpd_boss_knob_x_1, lpd_boss_knob_y_1, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        translate([lpd_boss_knob_x_2, lpd_boss_knob_y_1, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        translate([lpd_boss_knob_x_1, lpd_boss_knob_y_2, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        translate([lpd_boss_knob_x_2, lpd_boss_knob_y_2, height_top-wall-akai_boss_h-0.2]) cylinder(d=1.9, h=akai_boss_h+1.0);
        
        for (r=[0:3], c=[0:1]) {
            px=pads_base_x+c*pad_pitch_x; py=pads_base_y+r*pad_pitch_y;
            translate([px, py, height_top-wall-1.0]) cube([pad_hole, pad_hole, cut_h]);
            if(c==0) translate([px+1.5, py+pad_hole+1.2, height_top-text_depth]) linear_extrude(text_depth+0.2) text(str("PAD ", r+5), size=2.6, font="Liberation Sans:style=Bold", halign="left");
            if(c==1) { 
                translate([px+1.5, py+pad_hole+1.2, height_top-text_depth]) linear_extrude(text_depth+0.2) text(str("PAD ", r+1), size=2.6, font="Liberation Sans:style=Bold", halign="left"); 
                translate([px+pad_hole-1.5, py+pad_hole+1.2, height_top-text_depth]) linear_extrude(text_depth+0.2) text(str("PROG ", r+1), size=2.6, font="Liberation Sans:style=Bold", halign="right"); 
            }
        }
        
        for (r=[0:3], c=[0:1]) { kx=knobs_base_x+c*knob_pitch_x; ky=knobs_base_y+r*knob_pitch_y; translate([kx, ky, height_top-wall-1.0]) cylinder(d=knob_hole, h=cut_h); knob_faceplate_engraving(kx, ky, str(c==0 ? r+1 : r+5)); }
        
        translate([btn_base_x+btn_w/2, btn_base_y+btn_pitch_y+btn_d+1.5, height_top-text_depth]) linear_extrude(text_depth+0.2) text("PROGRAM", size=2.4, font="Liberation Sans:style=Bold", halign="center", valign="bottom");
        translate([btn_base_x+btn_pitch_x+btn_w/2, btn_base_y+btn_pitch_y+btn_d+1.5, height_top-text_depth]) linear_extrude(text_depth+0.2) text("PAD", size=2.6, font="Liberation Sans:style=Bold", halign="center", valign="bottom");
        translate([btn_base_x+btn_w/2, btn_base_y-2.0, height_top-text_depth]) linear_extrude(text_depth+0.2) text("PROG CHNG", size=2.4, font="Liberation Sans:style=Bold", halign="center", valign="top");
        translate([btn_base_x+btn_pitch_x+btn_w/2, btn_base_y-2.0, height_top-text_depth]) linear_extrude(text_depth+0.2) text("CC", size=2.6, font="Liberation Sans:style=Bold", halign="center", valign="top");
        
        translate([25.0, 34.0, height_top-text_depth]) linear_extrude(text_depth+0.2) text("DPRX", size=7.0, font="Liberation Sans:style=Bold", halign="center", valign="center");
        translate([25.0-12.0, 27.5, height_top-text_depth]) cube([24.0, 0.8, text_depth+0.2]);
        for (y_pos=[38:24:282]) vent_slot_wall_x(0, y_pos, height_top/2, 18.0, 3.8);
        for (y_pos=[38:24:110]) vent_slot_wall_x(width, y_pos, height_top/2, 18.0, 3.8);
        for (x_pos=[40:24:280]) { vent_slot_wall_y(x_pos, 0, height_top/2, 18.0, 3.8); vent_slot_wall_y(x_pos, depth, height_top/2, 18.0, 3.8); }
    }
}

module screen_clamp_bracket() {
    bracket_w=16.0; bracket_len=clamp_pitch_y+16.0; bracket_th=3.2; shoulder_w=1.5; hole_off_x=clamp_boss_x-79.5;
    difference() {
        union() { 
            cube([bracket_w, bracket_len, bracket_th]); 
            translate([0, (bracket_len-screen_frame_d)/2, bracket_th]) cube([shoulder_w, screen_frame_d, screen_thick]); 
        }
        translate([hole_off_x, 8.0, -1.0]) { cylinder(d=3.4, h=bracket_th+2.0); translate([0,0,0.9]) cylinder(d1=7.0, d2=3.4, h=2.0); }
        translate([hole_off_x, bracket_len-8.0, -1.0]) { cylinder(d=3.4, h=bracket_th+2.0); translate([0,0,0.9]) cylinder(d1=7.0, d2=3.4, h=2.0); }
    }
}

module bottom_tray() {
    difference() {
        union() {
            difference() { bottom_box(width, depth, height_bot, edge_r); translate([wall, wall, wall]) cube([width-2*wall, depth-2*wall, height_bot+1.0]); }
            difference() {
                translate([wall-lip_w+lip_clr, wall-lip_w+lip_clr, height_bot-0.4]) difference() {
                    bottom_box(width-2*(wall-lip_w+lip_clr), depth-2*(wall-lip_w+lip_clr), lip_h+0.4, max(0.2, edge_r-lip_w));
                    translate([lip_w, lip_w, -0.5]) cube([width-2*wall, depth-2*wall, lip_h+1.4]);
                }
                for (cx=[wall+4, width-wall-4], cy=[wall+4, depth-wall-4]) translate([cx, cy, height_bot-1.0]) cylinder(d=12.0, h=lip_h+2.0);
            }
            corner_boss_bottom_solid(wall+4, wall+4, 0); corner_boss_bottom_solid(width-wall-4, wall+4, 90);
            corner_boss_bottom_solid(width-wall-4, depth-wall-4, 180); corner_boss_bottom_solid(wall+4, depth-wall-4, 270);
            
            // Fissaggi M-Audio
            for (bx=[ma_hole_x_left, ma_hole_x_right], by=[ma_hole_y_rear, ma_hole_y_front]) translate([bx, by, wall-0.4]) cylinder(d=8.0, h=ma_boss_h+0.4);
            
            // Fissaggi Scheda Video Principale
            for (nx=[0, 1], ny=[0, 1]) standoff_boss(vid_x+(vid_w-vid_hole_dx)/2+nx*vid_hole_dx, vid_y+(vid_d-vid_hole_dy)/2+ny*vid_hole_dy, d_hole=2.1, d_ext=5.5, h=vid_boss_h);
            
            // Perni di allineamento per Controller Video (pieni, D=3mm, H=10mm) per colla a caldo
            alignment_peg(ctrl_hole_x1, ctrl_hole_y, d_peg=3.0, h=10.0);
            alignment_peg(ctrl_hole_x2, ctrl_hole_y, d_peg=3.0, h=10.0);
            alignment_peg(ctrl_hole_x3, ctrl_hole_y, d_peg=3.0, h=10.0);
            
            cable_tie_mount(16.0, 75.0, 0); cable_tie_mount(16.0, 160.0, 0); cable_tie_mount(120.0, 45.0, 90); cable_tie_mount(120.0, 120.0, 90);
            cable_tie_mount(120.0, 200.0, 90); cable_tie_mount(168.0, 235.0, 0); cable_tie_mount(108.0, 260.0, 0);
        }
        
        for (cx=[wall+4, width-wall-4], cy=[wall+4, depth-wall-4]) { 
            translate([cx, cy, -1.0]) cylinder(d=3.4, h=height_bot+2.0); 
            translate([cx, cy, -0.1]) cylinder(d=8.0, h=height_bot-11.0); 
            translate([cx, cy, height_bot-11.1]) cylinder(d1=8.0, d2=3.4, h=2.5);
        }
        
        for (nx=[0, 1], ny=[0, 1]) { bx=wyse_x+wyse_vesa_off+nx*75.0; by=wyse_y+wyse_vesa_off+ny*75.0; translate([bx, by, -1.0]) cylinder(d=4.2, h=wall*3); translate([bx, by, -0.1]) cylinder(d1=7.5, d2=4.2, h=wall-0.5); }
        for (bx=[ma_hole_x_left, ma_hole_x_right], by=[ma_hole_y_rear, ma_hole_y_front]) { translate([bx, by, -1.0]) cylinder(d=3.3, h=20.0); translate([bx, by, -0.1]) cylinder(d1=6.5, d2=3.3, h=wall-0.5); }
        translate([width-wall-1.0, wyse_y-1.0, wall]) cube([wall+3.0, wyse_d+2.0, wyse_h+0.8]);
        translate([-1.0, gx16_y, height_bot/2]) rotate([0, 90, 0]) cylinder(d=gx16_d, h=wall*3);
        
        left_text(gx16_y, height_bot/2+gx16_d/2+6.0, "POWER IN", text_sz=3.5); 
        left_text(gx16_y, height_bot/2-gx16_d/2-6.0, "DC IN", text_sz=3.0);
        
        translate([led_48v_x, depth, z_jacks - 1.0]) rotate([90, 0, 0]) cylinder(d=7.0, h=wall*4, center=true);
        translate([xlr_x, depth, z_xlr]) rotate([90, 0, 0]) cylinder(d=24.5, h=wall*4, center=true);
        
        ma_slot_w = 75.0;
        ma_slot_h = 15.0;
        ma_slot_r = 2.0;
        ma_slot_x = 220.25;
        ma_slot_z = z_pcb_top + 7.725;

        hull() {
            for (sx = [-1, 1], sz = [-1, 1])
                translate([
                    ma_slot_x + sx * (ma_slot_w/2 - ma_slot_r),
                    depth,
                    ma_slot_z + sz * (ma_slot_h/2 - ma_slot_r)
                ])
                    rotate([90, 0, 0])
                        cylinder(
                            r = ma_slot_r,
                            h = wall*4,
                            center = true
                        );
        }
        
        rear_text(pwr_led_x, 35.0, "POWER", 3.8);
        rear_text(phones_x, 7.5, "PHONES", 3.8);
        rear_text(direct_btn_x, 38.5, "DIRECT", 3.2); 
        rear_text(direct_btn_x, 34.0, "MONITOR", 3.2);
        rear_text(gtr_led_x, 29.0, "CLIP", 2.5); 
        rear_text(gtr_led_x, 8.0, "SIG", 2.5);
        rear_text(guitar_x, 35.0, "JACK IN", 3.5);
        rear_text(mic_led_x, 29.0, "CLIP", 2.5); 
        rear_text(mic_led_x, 8.0, "SIG", 2.5);
        rear_text(xlr_x, 7.5, "MIC", 4.5);
        rear_text(led_48v_x, 35.0, "48V", 3.5);
        
        for (y_pos=[70:24:286]) vent_slot_wall_x(0, y_pos, height_bot/2, 18.0, 3.2);
        for (y_pos=[214:24:286]) vent_slot_wall_x(width, y_pos, height_bot/2, 18.0, 3.2);
        for (x_pos=[60:24:140]) vent_slot_wall_y(x_pos, depth, height_bot/2, 18.0, 3.2);
        for (x_pos=[40:24:280]) vent_slot_wall_y(x_pos, 0, height_bot/2, 18.0, 3.2);
        for (sy=[32:12:212]) floor_slot_x(70.0, sy, 76.0, 5.0);
        for (sy=[32:12:188]) { floor_slot_x(152.0, sy, 24.0, 4.5); floor_slot_x(224.8, sy, 36.0, 4.5); }
        for (sy=[228:12:288]) floor_slot_x(138.0, sy, 44.0, 5.0);
    }
}

if (PART=="bottom") { color([0.86, 0.86, 0.88]) bottom_tray(); }
else if (PART=="top") { color([0.90, 0.90, 0.92]) top_panel(); }
else if (PART=="bottom_brackets") { color([0.7, 0.3, 0.3]) lavfin_bottom_brackets(); }
else if (PART=="bracket") { color([0.80, 0.82, 0.85]) screen_clamp_bracket(); }
else if (PART=="assembly") {
    color([0.86, 0.86, 0.88, 0.9]) bottom_tray();
    translate([0, 0, height_bot]) {
        color([0.90, 0.90, 0.92, 0.65]) top_panel();
        translate([79.5, clamp_boss_y_bot-8.0, height_top-wall-screen_thick-3.2]) color([0.2, 0.7, 0.9]) screen_clamp_bracket();
        translate([lavfin_holes_cx, lavfin_cy, height_top-lavfin_stack_h-lavfin_pcb_th-bezel_th_bot]) color([0.7, 0.3, 0.3, 0.95]) lavfin_bottom_brackets();
    }
}