

module wedge() {
    rotate([270, 0, 90]) translate([32, -8, -100]) linear_extrude(height=200)
    polygon(points=[[4, 0], [60, 0], [64, 4], [0, 4]]);
}

difference() {
    cube([194, 128, 7]);
    translate([187, 121, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
    translate([187, 7, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

    translate([187, 121, 0]) cylinder(h = 3, r = 4, $fn = 30);
    translate([187, 7, 0]) cylinder(h = 3, r = 4, $fn = 30);
    wedge();
}

translate([100, 100, -4]) color("Green") wedge();
