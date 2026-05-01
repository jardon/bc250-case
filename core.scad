use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
psu_height = 82;
psu_width = 42;

module core(height = 7, type = "A") {
    difference() {
        color("Red") union() {
            translate([
                ((web_height - (card_height + (web_thickness * 2)) + 4.9) / 2),
                ((web_width - ((card_width * 2) + (web_thickness * 3)) + 4.9) / 2),
                0
            ])
            difference() {
                roundedcube([card_height + (web_thickness * 2), (card_width * 2) + (web_thickness * 3), height], false, 2.8, "z");
                translate([web_thickness, web_thickness, 0]) roundedcube([card_height, card_width, height], false, 2.8, "z");
                translate([web_thickness, (web_thickness * 2) + card_width, 0]) roundedcube([card_height, card_width, height], false, 2.8, "z");

                translate([web_thickness - 3, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 60, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 125, (web_thickness * 2) + card_width - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);

                translate([web_thickness - 3, (web_thickness * 3) + (card_width * 2) - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 60, (web_thickness * 3) + (card_width * 2) - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 125, (web_thickness * 3) + (card_width * 2) - 3.5, 0]) cylinder(h = height, r = 1.2, $fn = 100);

                translate([web_thickness - 3, (web_thickness * 2) - 10, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 60, (web_thickness * 2) - 10, 0]) cylinder(h = height, r = 1.2, $fn = 100);
                translate([web_thickness + 125, (web_thickness * 2) - 10, 0]) cylinder(h = height, r = 1.2, $fn = 100);
            }
        }

    if (type == "B") translate([73, 19, 0]) cube([psu_height + web_thickness, psu_width + web_thickness, 7]);
    }
    
    if (type == "B")
    color("Pink") translate([73, 26, 0]) difference() {
        cube([psu_height + 14, psu_width + 6, 7]);
        translate([7, 7, 0]) cube([psu_height, psu_width, 7]);
        translate([psu_height, 2, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
        translate([5, 10, 0]) cylinder(h = 7, r = 1.2, $fn = 100);
    }
}
