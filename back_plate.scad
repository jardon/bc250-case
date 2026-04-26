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

            translate([web_thickness - 3, (web_thickness * 2) - 10, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 125, (web_thickness * 2) - 10, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
        }
    }
    
}

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
    web();
    translate([80, (card_width * 2) + (web_thickness * 2.5), 0]) cube([psu_height + 1, psu_width + 1, 7]);
    translate([31, card_width + web_thickness + 3, 0]) cube([13 , 31.5, 7]);
}


color("Pink") translate([73, (card_width * 2) + (web_thickness * 2.5) - 1, 6]) difference() {
    cube([psu_height + 15, psu_width + 6, 7]);
    translate([7, 0, 0]) cube([psu_height, psu_width, 7]);
    translate([web_thickness, psu_width + 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    //translate([0, psu_width, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
}

translate([45, -3.5, 0]) union() {
    difference() {
        translate([0, 38.5, 0]) cube([7, 43, 13]);
        translate([0, 68.5, 6]) rotate([0, 90, 0]) cylinder(h = 7, r = 2.3, $fn = 100);
    }
    translate([0, 38, 0]) cube([15, 7, 13]);
    translate([0, 76.5, 0]) cube([15, 7, 13]);
}