use <core.scad>

height = 80;

difference() {
    core(type = "B", height = height);
    translate([85, 24, 0]) cube([72, 8.5, height]);
    translate([33, 33, 0]) cube([40, 40, height]);
    translate([33, 80, 0]) cube([10, 31.5, height]);

    translate([77, 28.25, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([165, 28.25, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 76.5, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 115, 0]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([77, 28.25, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([165, 28.25, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 76.5, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    
    translate([165.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([100.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
    translate([37.25, 115, height - 5]) cylinder(r = 2.3, h = 5, $fn = 100);
}