use <roundedcube.scad>;

module rail(height, type = "A") {
    difference() {
        color("Green")
        roundedcube([31.5, 31.5, height], false, 2.8, "z");
        translate([10.5, 10.5, 0]) cylinder(h = height, r = 4.9, $fn = 100);
        translate([14, 14, 0]) roundedcube([21, 21, height], false, 2.8, "z");
        translate([21, 0, 0]) cube([14, 7, height]);
        if (type == "B" || type == "C") translate([7, 0, 0]) cube([28, 3.5, height]);
        translate([0, 21, 0]) cube([7, 14, height]);
        if (type == "B" ) translate([0, 7, 0]) cube([3.5, 28, height]);
        translate([14, 14, 0]) cube([7, 7, height]);
        rotate([0, 0, 45])
        translate([14, -3.5, 0])
        cube([14, 7, height]);
    }
}
