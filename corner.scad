use <roundedcube.scad>;
use <key.scad>;

module keyed_cube() {
    union() {
        roundedcube([35, 35, 35], false, 2.8, "all");
        roundedcube([35, 35, 35], false, 2.8, "xmin");
        roundedcube([35, 35, 35], false, 2.8, "ymin");
        roundedcube([35, 35, 35], false, 2.8, "zmin");
    }
}

module corner_cube(type = "A") {
    difference() {
        color("Green")
        keyed_cube();
        rotate([0, 0, 45]) translate([15.4, 0, 24.5]) key_shape(10.5);
        rotate([90, -45, 90]) translate([15.4, 0, 24.5]) key_shape(10.5);
        rotate([-90,-45, 0]) translate([15.4, 0, 24.5]) key_shape(10.5);
        rotate([0, 0, 0]) translate([21, 0, 21]) cube([14, 7, 14]);
        if (type == "A" || type == "B" || type == "C") rotate([0, 0, 0]) translate([7, 0, 7]) cube([28, 3.5, 28]);
        rotate([0, 0, 90]) translate([21, -1, 21]) cube([14, 7, 14]);
        if (type == "A" || type == "B") rotate([0, 0, 90]) translate([7, -3.5, 7]) cube([28, 3.5, 28]);
        rotate([90, 0, 0]) translate([21, 0, -35]) cube([14, 7, 14]);
        if (type == "A") rotate([90, 0, 0]) translate([7, 0, -35]) cube([28, 3.5, 28]);
    }
}
