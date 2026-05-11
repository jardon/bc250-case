union() {
    translate([7, 0, 0]) cube([78, 50, 2]);
    translate([0, 9.5, 0]) cube([85, 31, 4]);
    translate([7, 0, 0]) cube([78, 2, 11]);
    translate([7, 48, 0]) cube([78, 2, 11]);
    color("Green") translate([7, 0, 10.9]) linear_extrude(height=1.5) polygon(points=[[3, 3], [3, 0], [78, 0], [78, 3]]);
}