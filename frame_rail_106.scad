use <rail.scad>;
use <key.scad>;

height = 106;

difference() {
    rotate([180, 90, 0]) translate([-14, -20, -70]) key_shape((height));
    rotate([0, 270, 0]) translate([14, 20, -70]) cylinder(4, 3, $fn = 30);
}

rotate([0, 270, 0]) translate([14, 20, height - 70.1]) cylinder(4, 3, $fn = 30);
