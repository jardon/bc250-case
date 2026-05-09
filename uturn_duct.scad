use <core.scad>
use <roundedcube.scad>;
use <web.scad>

height = 127;
card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
blower_height = 62;

module center_hole() {
    cylinder(r = 3.5, h = 24, $fn = 30);
}

rotate([180, 0, 180]) union() {
    core(type = "A");
    color("Orange") translate([40.5 + blower_height, 41, 0]) cube([7, card_width + 1, 7]);
}

translate([-100.5, 76.5, 0]) difference() {
    center_hole();
    cylinder(r = 3, h = 25, $fn = 30);
}

color("Blue") translate([-72, 40.5, -7]) cube([3, card_width + 4.5, 30]);
difference() {
    translate([-102, 79, -7]) cube([3, card_width + 2, 30]);
    translate([-100.5, 76.5, 0]) center_hole();
}

color("Blue") translate([-72, 40.5, -7]) cube([3, card_width + 4.5, 30]);
color("Blue") difference() {
    translate([-98, 75, -7]) cube([29, 3, 30]);
    translate([-100.5, 76.5, 0]) center_hole();
}

color("Blue") translate([-139.5, 40.5, -3]) cube([30, card_width + 4.5, 3]);

translate([-162, 41, -1]) difference() {
    union() {
        translate([22.5, 0, 0]) roundedcube([100, card_width, 25], false, 5, "zmax");
        translate([22.5, card_width / 2, 0]) roundedcube([100, card_width, 25], false, 5, "zmax");
        translate([-2, card_width + 4, 0]) roundedcube([card_height + 2, card_width + 4.5, 25], false, 5, "zmax");
    }
    union() {
        translate([23.5, 1, 0]) roundedcube([98, card_width - 2, 24], false, 5, "zmax");
        translate([23.5, (card_width / 2) + 1, 0]) roundedcube([98, card_width - 2, 24], false, 5, "zmax");
        translate([-1, (card_width + 4) + 1, 0]) roundedcube([card_height, card_width + 2, 24], false, 5, "zmax");
    }
    color("Red") translate([61.5, 35.5, 1]) center_hole();
    
}