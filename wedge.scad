module wedge(width = 60) {
    rotate([270, 0, 90]) linear_extrude(height=200)
    polygon(points=[[4, 0], [width, 0], [width + 4, 4], [0, 4]]);
}

wedge();