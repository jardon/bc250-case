module wedge(width = 60) {
    rotate([270, 0, 90]) translate([32, -8, -100]) linear_extrude(height=200)
    polygon(points=[[4, 0], [width, 0], [width + 4, 4], [0, 4]]);
}