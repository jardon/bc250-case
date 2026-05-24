use <wedge.scad>;

width = 150;
height = 188;

difference() {
    union() {
        cube([height, width + 50, 3]);
        color("Blue") translate([height - 24, 14, 0]) cube([10, width + 22, 6]);
        translate([0, (width + 50) / 6, 0]) cube([110, (width + 50) / 1.5, 6]);
    }
    translate([height - 21, width + 29, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
    translate([height - 21, 21, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

    translate([height - 21, width + 29, 0]) cylinder(h = 3, r = 3, $fn = 30);
    translate([height - 21, 21, 0]) cylinder(h = 3, r = 3, $fn = 30);

    // translate([0, 5, -2]) wedge(width = 30);
    // translate([0, 83, -2]) wedge(width = 30);
    translate([0, 12, -2]) wedge(width = 30);
    translate([0, 90, -2]) wedge(width = 30);
}

translate([100, width + 30, -4]) color("Green") wedge(width = 30);