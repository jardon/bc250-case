module key_shape(height) {
    cylinder(h = height, r = 4.9, $fn = 100);
    translate([0, -3.5, 0])
    cube([14, 7, height]);
}