module wedge() {
    rotate([270, 0, 90]) translate([32, -8, -100]) linear_extrude(height=200)
    polygon(points=[[4, 0], [60, 0], [64, 4], [0, 4]]);
}