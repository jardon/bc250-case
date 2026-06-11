module vent_holes(height = 3) {
    difference() {
        cube([20, 20, height]);
        for (x = [5 : 10 : 15]) {
            for (y = [5 : 10 : 15]) {
                translate([x, y, 0])
                cylinder(h = height, r = 3, $fn = 30);
            }
        }
    }
}
