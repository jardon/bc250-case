use <core.scad>
use <web.scad>

height = 127;
card_height = 122.5;
card_width = 31.5;
web_thickness = 7;
web_height = 198.222;
web_width = 148.222;
key_radius = 4.9;
blower_height = 62;

difference() {
    union() {
        core(type = "A", height = height);
        web(type = "A");
}
    translate([30, 30, 7]) cube([150, 43, height]);
    color("Green")translate([30, 80, 0]) cube([150, 31.5, height]);
    translate([42, 80, 0]) cube([150, 31.5, height]);
    translate([42, 115, 7]) cube([53, 7, height]);
    translate([106, 115, 7]) cube([54, 7, height]);
    
    translate([165.25, 38.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 38.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 38.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);

    translate([165.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);

    translate([165.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);

    rotate([90, 90, 0]) translate([-15, 156, -80]) cylinder(r = 2.3, h = 7, $fn = 30);
    rotate([90, 90, 0]) translate([-15, 52, -80]) cylinder(r = 2.3, h = 7, $fn = 30);
    rotate([90, 90, 0]) translate([-119, 156, -80]) cylinder(r = 2.3, h = 7, $fn = 30);
    rotate([90, 90, 0]) translate([-119, 52, -80]) cylinder(r = 2.3, h = 7, $fn = 30);
}

translate([45, card_width + web_thickness- 3.5, 0]) union() {
    difference() {
        translate([0, 38.5, 0]) cube([7, 43, 12]);
        translate([0, 62.5, 6]) rotate([0, 90, 0]) cylinder(h = 7, r = 2.3, $fn = 100);
    }
    translate([0, 38, 0]) cube([15, 7, 12]);
    translate([0, 76.5, 0]) cube([15, 7, 12]);
}

color("Orange") translate([33.5 + blower_height, 42, 0]) cube([7, card_width + 1, 7]);