include <roundedcube.scad>;

difference() {
    union() {
        translate([7, 0, 0]) cube([8, 49.5, 2]);
        translate([15, 33.5, 0]) cube([15, 16, 2]);
        translate([0, 9.5, 0]) cube([15, 31, 15]);
        translate([0, 24.5, 0]) cube([30, 16, 15]);
        translate([7, 0, 0]) cube([8, 2, 7]);
        translate([7, 47.5, 0]) cube([23, 2, 12]);
        color("Green") translate([7, 46, 11.9]) linear_extrude(height=1.5) polygon(points=[[3, 3], [3, 0], [23, 0], [23, 3]]);
    }
    translate([-2, 10.5, 7]) roundedcube([8, 29, 10], false, 2.8, "all");
}