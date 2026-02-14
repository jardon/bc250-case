use <roundedcube.scad>;

module rail(height) {
    difference() {
        color("Green")
        roundedcube([31.5, 31.5, height], false, 2.8, "z");
        translate([10.5, 10.5, -7]) cylinder(h = 28, r = 4.9, $fn = 100);
        translate([14, 14, -7]) roundedcube([21, 21, 28], false, 2.8, "z");
        translate([21, 0, -7]) cube([14, 7, 28]);
        translate([0, 21, -7]) cube([7, 14, 28]);
        translate([14, 14, 0]) cube([7, 7, 28]);
        rotate([0, 0, 45])
        translate([14, -3.5, 0])
        cube([14, 7, 14]);
    }
}
