use <web.scad>;

card_width = 31.5;

difference() {
    web();
    translate([31, 80.05, 0]) cube([12, card_width, 8]);
}