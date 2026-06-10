use <key.scad>;

height = 15;

union() {
    rotate([180, 90, 0]) translate([-14, 20, -70]) key_shape((height + 9));
    rotate([0, 90, 0]) translate([-14, -20, 70]) cylinder(4, 3, $fn = 30);
}

