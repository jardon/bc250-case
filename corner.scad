use <roundedcube.scad>;

module key_hole() {
    cylinder(h = 2, r = 0.7, $fn = 100);
    translate([0, -0.5, 0])
    cube([2, 1, 2]);
}

difference() {
    color("Green")
    roundedcube([5, 5, 5], false, 0.4);
    rotate([0, 0, 45]) translate([2.5, 0, 3]) key_hole();
    rotate([90, -45, 90]) translate([2.5, 0, 3.5]) key_hole();
    rotate([-90,-45, 0]) translate([2.5, 0, 3]) key_hole();
    rotate([0, 0, 0]) translate([3, 0, 3]) cube([2, 1, 2]);
    rotate([0, 0, 90]) translate([3, -1, 3]) cube([2, 1, 2]);
    rotate([90, 0, 0]) translate([3, 0, -5]) cube([2, 1, 2]);
}

