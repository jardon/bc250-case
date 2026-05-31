use <wedge.scad>;

width = 150;
height = 188;

module side_panel() {
    difference() {
        union() {
            cube([height, width + 58, 3]);
            color("Blue") translate([height - 29, 14, 0]) cube([14, width + 29, 6]);
            translate([0, (width + 58) / 6, 0]) cube([110, (width + 58) / 1.5, 6]);
        }
        translate([height - 21, width + 37, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
        translate([height - 21, 21, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

        translate([height - 21, width + 37, 0]) cylinder(h = 3, r = 3, $fn = 30);
        translate([height - 21, 21, 0]) cylinder(h = 3, r = 3, $fn = 30);

        translate([0, 15, -2]) wedge(width = 30);
        translate([0, 93, -2]) wedge(width = 30);
    }
}

side_panel();

translate([100, width + 30, -4]) color("Green") wedge(width = 29.8);
