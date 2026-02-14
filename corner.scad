use <roundedcube.scad>;
use <key.scad>;

module keyed_cube() {
    union() {
        roundedcube([5, 5, 5], false, 0.2, "all");
        roundedcube([5, 5, 5], false, 0.2, "xmin");
        roundedcube([5, 5, 5], false, 0.2, "ymin");
        roundedcube([5, 5, 5], false, 0.2, "zmin");
    }
}

module corner_cube(type = "A") {
    difference() {
        color("Green")
        keyed_cube();
        rotate([0, 0, 45]) translate([2.2, 0, 3.5]) key_shape(1.5);
        rotate([90, -45, 90]) translate([2.2, 0, 3.5]) key_shape(1.5);
        rotate([-90,-45, 0]) translate([2.2, 0, 3.5]) key_shape(1.5);
        rotate([0, 0, 0]) translate([3, 0, 3]) cube([2, 1, 2]);
        if (type == "A" || type == "B" || type == "C") rotate([0, 0, 0]) translate([1, 0, 1]) cube([4, .5, 4]);
        rotate([0, 0, 90]) translate([3, -1, 3]) cube([2, 1, 2]);
        if (type == "A" || type == "B") rotate([0, 0, 90]) translate([1, -0.5, 1]) cube([4, 0.5, 4]);
        rotate([90, 0, 0]) translate([3, 0, -5]) cube([2, 1, 2]);
        if (type == "A") rotate([90, 0, 0]) translate([1, 0, -5]) cube([4, 0.5, 4]);
    }
}
