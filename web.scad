use <key.scad>;
use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;

module web() {
    union() {
        translate([
            ((web_height - (card_height + (web_thickness * 2)) + 4.9) / 2),
            ((web_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2),
            0
        ])
        difference() {
            roundedcube([card_height + (web_thickness * 2), (card_width * 2) + (web_thickness * 3), 7], false, 2.8, "z");
            translate([web_thickness, web_thickness, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
            translate([web_thickness, (web_thickness * 2) + card_width, 0]) roundedcube([card_height, card_width, 7], false, 2.8, "z");
            translate([web_thickness - 3, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 60, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 125, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);

            translate([web_thickness + 60, (web_thickness * 2) - 10, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
            translate([web_thickness + 125, (web_thickness * 2) - 10, 0]) cylinder(h = 7, r = 1.2, $fn = 100);

            translate([web_thickness + 125, (web_thickness * 2) + (card_width * 2) - 13.5, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
        }
        translate([key_radius - (key_radius / 2), key_radius - (key_radius / 2), 7]) cylinder(4, 3, $fn = 30);
        difference() {
            translate([key_radius - (key_radius / 2), key_radius - (key_radius / 2), 0]) rotate([0, 0, 45]) key_shape(7);
            translate([key_radius - (key_radius / 2), key_radius - (key_radius / 2), 0]) cylinder(4, 3, $fn = 30);
        }
        color("Pink") translate([8, 3, 0]) rotate([0, 0, 45]) cube([45, 7, 7]);

        translate([key_radius - (key_radius / 2), web_width + (key_radius / 2), 7]) cylinder(4, 3, $fn = 30);
        difference() {
            translate([key_radius - (key_radius / 2), web_width + (key_radius / 2), 0]) rotate([0, 0, -45]) key_shape(7);
            translate([key_radius - (key_radius / 2), web_width + (key_radius / 2), 0]) cylinder(4, 3, $fn = 30);
        }
        color("Green") translate([3, web_width - 3, 0]) rotate([0, 0, -45]) cube([45, 7, 7]);

        translate([web_height + (key_radius / 2), key_radius - (key_radius / 2), 7]) cylinder(4, 3, $fn = 30);
        difference () {
            translate([web_height + (key_radius / 2), key_radius - (key_radius / 2), 0]) rotate([0, 0, 135]) key_shape(7);
            translate([web_height + (key_radius / 2), key_radius - (key_radius / 2), 0]) cylinder(4, 3, $fn = 30);
        }
        color("Blue") translate([web_height + key_radius - 3, key_radius + 3, 0]) rotate([0, 0, 135]) cube([45, 7, 7]);

        translate([web_height + (key_radius / 2), web_width + (key_radius / 2), 7]) cylinder(4, 3, $fn = 30);
        difference() {
            translate([web_height + (key_radius / 2), web_width + (key_radius / 2), 0]) rotate([0, 0, -135]) key_shape(7);
            translate([web_height + (key_radius / 2), web_width + (key_radius / 2), 0]) cylinder(4, 3, $fn = 30);
        }
        color("Red") translate([web_height - 3, web_width + 2, 0]) rotate([0, 0, -135]) cube([45, 7, 7]);
    }
}