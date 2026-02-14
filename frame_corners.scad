use <corner.scad>;

corner_cube();

translate([42, 42, 0]) corner_cube(type = "B");

translate([-42, -42, 0]) corner_cube(type = "C");