use <wedge.scad>;

difference() {
    cube([194, 128, 7]);
    translate([187, 121, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
    translate([187, 7, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

    translate([187, 121, 0]) cylinder(h = 3, r = 4, $fn = 30);
    translate([187, 7, 0]) cylinder(h = 3, r = 4, $fn = 30);
    wedge();
}

translate([100, 100, -4]) color("Green") wedge();
