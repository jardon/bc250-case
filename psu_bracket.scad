include <core.scad>;

union() {
    difference() {
        core(height = 7, type = "B");
        translate([0, 0, 2.5]) core(height = 7, type = "B");
        translate([23, 0, 0]) cube([50, 120, 4]);
        translate([63, 80, 0]) cube([110, 40, 4]);
        translate([63, 24, 0]) cube([120, 1, 4]);
        translate([169, 24, 0]) cube([1, 60, 4]);
    }
    difference() {
        translate([79, 30.5, 0]) cube([9, 43, 2.5]);
        color("Blue") translate([84, 36, 0]) cylinder(h = 7, r = 1.8, $fn = 100);
        translate([84, 68, 0]) cylinder(h = 7, r = 1.8, $fn = 100);
    }
    
    difference() {
        translate([153, 30.5, 0]) cube([12, 9, 2.5]);
        color("Blue") translate([157, 36.5, 0]) cylinder(h = 7, r = 1.8, $fn = 100);
    }
}