use <key.scad>;
use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
key_height = 198.222;
key_width = 148.222;

union() {
    translate([
        ((key_height - (card_height + (web_thickness * 2)) + 4.9) / 2),
        ((key_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2),
        0
    ])
    difference() {
        roundedcube([card_height + (web_thickness * 2), (card_width * 2) + (web_thickness * 3), 7], false, 2.8, "z");
        translate([web_thickness, web_thickness, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
        translate([web_thickness, (web_thickness * 2) + card_width, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
    }
    translate([0, 0, 0]) rotate([0, 0, 45]) key_shape(7);
    color("Pink") translate([5, 0, 0]) rotate([0, 0, 45]) cube([50, 7, 7]);

    translate([0, key_width + 4.9, 0]) rotate([0, 0, -45]) key_shape(7);
    color("Green") translate([0, key_width, 0]) rotate([0, 0, -45]) cube([50, 7, 7]);

    translate([key_height + 4.9, 0, 0]) rotate([0, 0, 135]) key_shape(7);
    color("Blue") translate([key_height + 4.9, 5, 0]) rotate([0, 0, 135]) cube([50, 7, 7]);

    translate([key_height + 4.9, key_width + 4.9, 0]) rotate([0, 0, -135]) key_shape(7);
    color("Red") translate([key_height, key_width + 5, 0]) rotate([0, 0, -135]) cube([50, 7, 7]);
}