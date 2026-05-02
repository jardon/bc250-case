use <core.scad>;
use <key.scad>;
use <roundedcube.scad>;

card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;

module web(type = "A") {
    union() {
         difference() {
             core(type = type);
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
