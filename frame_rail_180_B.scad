use <rail.scad>;
use <key.scad>;

height = 180;

translate([0, 40, 0]) difference() {
    union() {
        translate([3.5, 3.5, height]) cylinder(3, 2, $fn = 30);
        rail(height, type = "B");
    }
    rotate([180, 0, 0]) translate([24, -10.5, (height * -1)]) cylinder(3, 2, $fn = 30);
    rotate([180, 0, 0]) translate([10.5, -24, (height * -1)]) cylinder(3, 2, $fn = 30);
    translate([10.5, 24, 0]) cylinder(3, 2, $fn = 30);
    translate([24, 10.5, 0]) cylinder(3, 2, $fn = 30);
    translate([3.5, 3.5, 0]) cylinder(3, 2, $fn = 30);
}

translate([40, 40, 0]) difference() {
    union() {
        translate([10.5, 24, height]) cylinder(3, 2, $fn = 30);
        translate([24, 10.5, height]) cylinder(3, 2, $fn = 30);
        rotate([180, 0, 90]) translate([0, 0, (height * -1)]) rail(height, type = "B");
    }
    rotate([180, 0, 0]) translate([3.5, -3.5, (height * -1)]) cylinder(3, 2, $fn = 30);
    translate([10.5, 24, 0]) cylinder(3, 2, $fn = 30);
    translate([24, 10.5, 0]) cylinder(3, 2, $fn = 30);
    translate([3.5, 3.5, 0]) cylinder(3, 2, $fn = 30);
}


union() {
    rotate([180, 90, 0]) translate([-14, 20, -70]) key_shape((height + 18));
    rotate([0, 90, 0]) translate([-14, -20, 70]) cylinder(4,3);
}

difference() {
    rotate([180, 90, 0]) translate([-14, -20, -70]) key_shape((height + 18));
    rotate([0, 270, 0]) translate([14, 20, -70]) cylinder(4,3);
}
