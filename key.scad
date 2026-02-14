module key_shape(height) {
    cylinder(h = height, r = 0.7, $fn = 100);
    translate([0, -0.5, 0])
    cube([2, 1, height]);
}