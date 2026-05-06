use <web.scad>;

height = 7;

difference() {
    web(type = "B");
    translate([33, 80, 0]) cube([10, 31.5, height]);
}