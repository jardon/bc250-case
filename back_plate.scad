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
            6
        ]) difference() {
    cube([178, 128, 6]);
    translate([21, 17.5, 0]) cube([136, 93, 7]);
    translate([21, 13.5, 0]) cube([136, 7, 7]);
    translate([7, 7, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([7, 121, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([171, 7, 0]) cylinder(h = 7, r = 1.5, $fn = 100);
    translate([171, 121, 0]) cylinder(h = 7, r = 1.5, $fn = 100);

    translate([7, 7, 3]) cylinder(h = 3, r = 3, $fn = 100);
    translate([7, 121, 3]) cylinder(h = 3, r = 3, $fn = 100);
    translate([171, 7, 3]) cylinder(h = 3, r = 3, $fn = 100);
    translate([171, 121, 3]) cylinder(h = 3, r = 3, $fn = 100);
}

difference() {
    core(type = "B");
    translate([31, (card_width * 2) + (web_thickness * 2) + 3, 0]) cube([13 , 31.5, 7]);
}

translate([30, 26, 0]) cube([44, 10, 7]);
translate([26, 26, 0]) cube([10, (card_width * 2) + (web_thickness * 5), 7]);
translate([30, (card_width * 2) + (web_thickness * 5) + 20, 0]) cube([144, 7, 7]);
translate([24 + card_height + (web_thickness * 3), 26, 0]) cube([5, (card_width * 2) + (web_thickness * 5), 7]);

translate([45, card_width + web_thickness- 3.5, 0]) union() {
    difference() {
        translate([0, 38.5, 0]) cube([7, 43, 13]);
        translate([0, 57.5, 6]) rotate([0, 90, 0]) cylinder(h = 7, r = 2.3, $fn = 100);
    }
    translate([0, 38, 0]) cube([15, 7, 13]);
    translate([0, 76.5, 0]) cube([15, 7, 13]);
}