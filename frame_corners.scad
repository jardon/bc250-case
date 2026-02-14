use <corner.scad>;

corner_cube();

translate([6, 6, 0]) corner_cube(type = "B");

translate([-6, -6, 0]) corner_cube(type = "C");