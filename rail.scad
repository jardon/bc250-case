use <roundedcube.scad>;

difference() {
    color("Green")
    roundedcube([4.5, 4.5, 2], false, 0.4, "z");
    translate([1.5, 1.5, -1]) cylinder(h = 4, r = 0.7, $fn = 100);
    translate([2, 2, -1]) roundedcube([3, 3, 4], false, 0.4, "z");
    translate([3, 0, -1]) cube([2, 1, 4]);
    translate([0, 3, -1]) cube([1, 2, 4]);
    translate([2, 2, 0]) cube([1, 1, 4]);
    rotate([0, 0, 45])
    translate([2, -0.5, 0])
    cube([2, 1, 2]);
}


translate([3, 3, 0]) difference() {
    union(){
        translate([1.5, 1.5, 0]) cylinder(h = 2, r = 0.7, $fn = 100);
        rotate([0, 0, 45]) translate([2, -0.5, 0]) roundedcube([3, 1, 2], false, 0.4, "z");
    }
}
