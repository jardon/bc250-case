use <key.scad>;
use <roundedcube.scad>;
use <core.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
psu_height = 82;
psu_width = 42;

translate([
            ((web_height - (card_height + (web_thickness * 2)) + 4.9) / 2) - 21,
            ((web_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2) - 21.5,
            0
        ]) difference() {
    cube([178, 128, 6]);
    translate([21, 17.5, 0]) cube([136, 93, 7]);
    translate([7, 7, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([7, 121, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([171, 7, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([171, 121, 0]) cylinder(h = 7, r = 1.5, $fn = 100);

    translate([7, 7, 0]) cylinder(h = 3, r = 3, $fn = 100);
    translate([7, 121, 0]) cylinder(h = 3, r = 3, $fn = 100);
    translate([171, 7, 0]) cylinder(h = 3, r = 3, $fn = 100);
    translate([171, 121, 0]) cylinder(h = 3, r = 3, $fn = 100);
}

translate([0, 0, 6]) difference() {
    core();
    translate([75, (card_width * 2) + (web_thickness * 2.5), 0]) cube([psu_height + 10, psu_width + 1, 7]);
    translate([31, card_width + web_thickness + 3, 0]) cube([13 , 31.5, 7]);
}

translate([30, 26, 6]) cube([142, 10, 7]);
translate([24, 26, 6]) cube([10, 102, 7]);
translate([30, (card_width * 2) + (web_thickness * 3) + 34, 6]) cube([44, 10, 7]);
translate([card_height + 44, 26, 6]) cube([10, 102, 7]);

color("Pink") translate([73, (card_width * 2) + (web_thickness * 2.5) - 1, 6]) difference() {
    cube([psu_height + 15, psu_width + 6, 7]);
    translate([7, 0, 0]) cube([psu_height, psu_width, 7]);
    translate([3.5, psu_width - 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    translate([web_thickness + psu_height + 3 + 0.222, psu_width - 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
}

translate([45, -3.5, 0]) union() {
    difference() {
        translate([0, 38.5, 0]) cube([7, 43, 13]);
        translate([0, 66.5, 6]) rotate([0, 90, 0]) cylinder(h = 7, r = 2.3, $fn = 100);
    }
    translate([0, 38, 0]) cube([15, 7, 13]);
    translate([0, 76.5, 0]) cube([15, 7, 13]);
}