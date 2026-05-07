use <rail.scad>;
use <key.scad>;

height = 56;

difference() {
    rotate([180, 90, 0]) translate([-14, -20, -70]) key_shape((height + 9));
    rotate([0, 270, 0]) translate([14, 20, -70]) cylinder(4, 3, $fn = 30);
}
