use <rail_trim.scad>;

height = 160;

translate([0, 40, 0]) difference() {
    union() {
        translate([3.5, 3.5, height - 0.1]) cylinder(3, 2, $fn = 30);
        rail_trim(height, type = "C");
    }
    rotate([180, 0, 0]) translate([24, -10.5, (height * -1)]) cylinder(3, 2, $fn = 30);
    rotate([180, 0, 0]) translate([10.5, -24, (height * -1)]) cylinder(3, 2, $fn = 30);
}

translate([40, 40, 0]) difference() {
    union() {
        translate([10.5, 24, height - 0.1]) cylinder(3, 2, $fn = 30);
        translate([24, 10.5, height - 0.1]) cylinder(3, 2, $fn = 30);
        rotate([180, 0, 90]) translate([0, 0, (height * -1)]) rail_trim(height, type = "C");
    }
    rotate([180, 0, 0]) translate([3.5, -3.5, (height * -1)]) cylinder(3, 2, $fn = 30);
}
