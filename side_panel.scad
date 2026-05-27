use <wedge.scad>;

width = 150;
height = 188;

difference() {
    union() {
        cube([height, width + 56, 3]);
        color("Blue") translate([height - 28, 14, 0]) cube([14, width + 28, 6]);
        translate([0, (width + 56) / 6, 0]) cube([110, (width + 56) / 1.5, 6]);
    }
    translate([height - 21, width + 35, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
    translate([height - 21, 21, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

    translate([height - 21, width + 35, 0]) cylinder(h = 3, r = 3, $fn = 30);
    translate([height - 21, 21, 0]) cylinder(h = 3, r = 3, $fn = 30);

    translate([0, 15, -2]) wedge(width = 30);
    translate([0, 93, -2]) wedge(width = 30);
}

translate([100, width + 30, -4]) color("Green") wedge(width = 30);