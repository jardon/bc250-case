use <wedge.scad>;

difference() {
    cube([174, 128, 6]);
    translate([167, 121, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
    translate([167, 7, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

    translate([167, 121, 0]) cylinder(h = 3, r = 4, $fn = 30);
    translate([167, 7, 0]) cylinder(h = 3, r = 4, $fn = 30);
    translate([100, (128 / 4), 7]) color("Green") wedge();
}

translate([200, 140, 4]) color("Green") wedge();
