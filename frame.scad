use <roundedcube.scad>;

union() {
    roundedcube([123, 341, 6], true, 0.5, "zmax");
    difference() {
        translate([55.5, -170.5, -3]) roundedcube([6, 341, 43], false, 0.5, "zmax");
        translate([55.5, -155.5, 3]) cube([6, 311, 32]);
        translate([60.5, -170.5, 3]) cube([1, 341, 32]);
        translate([55.5, -165.5, 10]) rotate([0, 90, 0]) cylinder(5.2, 2.3, false);
        translate([55.5, 165.5, 10]) rotate([0, 90, 0]) cylinder(5.2, 2.3, false);
    }
    translate([-62, 74 , 37]) cube([123, 96.5, 3]);
    translate([-62, -170.5 , 37]) cube([123, 36.5, 3]);
    translate([26, -134 , 37]) cube([30, 45, 3]);
}