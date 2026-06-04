height = 150;
width = 100;

panel_height = height + 56;
panel_width = width + 56;

difference() {
    cube([panel_height, panel_width, 3]);

    translate([7.5, 7.5, 0.3]) cylinder(h = 6, r = 3.1, $fn = 30);
    translate([7.5, panel_width - 7.5, 0.3]) cylinder(h = 6, r = 3.1, $fn = 30);
    translate([panel_height - 7.5, 7.5, 0.3]) cylinder(h = 6, r = 3.1, $fn = 30);
    translate([panel_height - 7.5, panel_width - 7.5, 0.3]) cylinder(h = 6, r = 3.1, $fn = 30);
    
    translate([45, panel_width - 45, 0]) cylinder(h = 6, r = 8, $fn = 50);
}