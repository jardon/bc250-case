union() {
    translate([0, 0, 0]) cube([42, 50, 2]);
    translate([0, 9.5, 0]) cube([154, 31, 4]);
    translate([0, 0, 0]) cube([42, 2, 11]);
    translate([0, 48, 0]) cube([42, 2, 11]);
    color("Green") translate([0, 0, 10.9]) 
    linear_extrude(height=1.5) polygon(points=[[3, 3], [3, 0], [42, 0], [42, 3]]);

    translate([49, 7, 0]) cube([105, 36, 2]);
    translate([49, 9.5, 0]) cube([105, 31, 4]);
    translate([49, 7, 0]) cube([105, 2, 11]);
    translate([49, 41, 0]) cube([105, 2, 11]);
}