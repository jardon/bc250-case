

difference() {
    union() {
        cylinder(h = 4, r = 3.9, $fn = 30);
        translate([0, 0, 3]) cylinder(h = 6, r = 15, $fn = 100);
    }
    cylinder(h = 10, r = 1.6, $fn = 30);
    translate([0, 0, 5]) cylinder(h = 6, r = 4, $fn = 30);
}