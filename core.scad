use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
psu_height = 82;
psu_width = 42;

module core() {
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