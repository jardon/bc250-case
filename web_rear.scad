use <web.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
psu_height = 82;
psu_width = 42;


difference() {
    web();
    translate([80, 30, 0]) cube([psu_height, psu_width, 7]);
    translate([30, (card_width * 2) + (web_thickness * 2) + 3.05, 0]) cube([13, 31.5, 7]);
}


color("Pink") translate([73, 30, 0]) difference() {
    cube([psu_height + 14, psu_width + 6, 7]);
    translate([7, 7, 0]) cube([psu_height, psu_width, 7]);
    // translate([7, 0, 0]) cube([psu_height + 7, psu_width - 76, 7]);
    translate([psu_height + 10, psu_width + 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    translate([5, psu_width + 3, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    
}
