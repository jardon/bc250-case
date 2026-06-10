use <vent_holes.scad>;

width = 100;
height = 188;

module side_panel(vented = false) {
    union() {
        difference() {
            union() {
                cube([height, width + 56, 3]);
                color("Blue") translate([height - 28, 14, 0]) cube([14, width + 28, 6]);
                translate([0, (width + 56) / 6, 0]) cube([110, (width + 56) / 1.5, 6]);
            }
            translate([height - 20.5, width + 35.5, 0]) cylinder(h = 7, r = 1.6, $fn = 30);
            translate([height - 20.5, 20.5, 0]) cylinder(h = 7, r = 1.6, $fn = 30);

            translate([height - 20.5, width + 35.5, 0]) cylinder(h = 3, r = 3, $fn = 30);
            translate([height - 20.5, 20.5, 0]) cylinder(h = 3, r = 3, $fn = 30);

            translate([100, (((width + 56) / 6) * 1) + 15, 7]) wedge(width = 30);
            translate([100, (((width + 56) / 6) * 5) - 34 - 15, 7]) wedge(width = 30);
            
            if (vented) translate([120, 44.5, 0]) cube([40, 120, 3]);

            translate([height - 7.5, width + 48.5, 0.3]) cylinder(h = 3, r = 3.1, $fn = 30);
            translate([height - 7.5, 7.5, 0.3]) cylinder(h = 3, r = 3.1, $fn = 30);
        }
    }
    if (vented)
    for (x = [0 : 1 : 2]) {
        for (y = [0 : 1 : 5]) {
            translate([120 + (x * 20) , 44.5 + (y * 20), 0]) vent_holes();
        }
    }
}

side_panel(vented = false);
