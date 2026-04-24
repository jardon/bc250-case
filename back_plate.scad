use <key.scad>;
use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
psu_height = 82;
psu_width = 42;

module web() {
    color("Red") union() {
        translate([
            ((web_height - (card_height + (web_thickness * 2)) + 4.9) / 2),
            ((web_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2),
            0
        ])
        difference() {
            translate([-2, (web_thickness - (web_thickness * 2)), 0]) roundedcube([card_height + (web_thickness * 3), (card_width * 2) + (web_thickness * 5), 7], false, 2.8, "z");
            translate([web_thickness, web_thickness, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
            translate([web_thickness, (web_thickness * 2) + card_width, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
            translate([web_thickness - 3, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 60, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 125, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);

            translate([web_thickness - 3, (web_thickness * 2) + 66, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 125, (web_thickness * 2) + 66, 0]) cylinder(h = 7, r = 1.2, $fn = 100);

            translate([web_thickness + 125, (web_thickness * 2) + (card_width * 2) - 63.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
        }
    }
    
}

translate([
            ((web_height - (card_height + (web_thickness * 2)) + 4.9) / 2) - 17,
            ((web_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2) - 17.5,
            0
        ]) difference() {
    cube([170, 120, 7]);
    translate([17, 13.5, 0]) cube([136, 93, 7]);
    translate([7, 7, 0]) cylinder(h = 7, r = 2, $fn = 100);
    translate([7, 113, 0]) cylinder(h = 7, r = 2, $fn = 100);
    translate([163, 7, 0]) cylinder(h = 7, r = 2, $fn = 100);
    translate([163, 113, 0]) cylinder(h = 7, r = 2, $fn = 100);
}

translate([0, 0, 7]) difference() {
    web();
    translate([80, 30.5, 0]) cube([psu_height, psu_width, 7]);
    translate([31, 80, 0]) cube([13, 31.5, 7]);
}


color("Pink") translate([73, 25.5, 7]) difference() {
    cube([psu_height + 15, psu_width + 6, 7]);
    translate([7, 7, 0]) cube([psu_height, psu_width, 7]);
    translate([psu_height + 10, psu_width + 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    //translate([5, psu_width + 3, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
}

translate([45, 35, 0]) union() {
    difference() {
        translate([0, 38.5, 0]) cube([7, 43, 14]);
        translate([0, 68.5, 6]) rotate([0, 90, 0]) cylinder(h = 7, r = 2.3, $fn = 100);
    }
    translate([0, 38, 0]) cube([15, 7, 14]);
    translate([0, 76.5, 0]) cube([15, 7, 14]);
}