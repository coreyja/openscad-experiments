extrusion_height = 0.5;

module die(labels = ["1", "2", "3", "4", "5", "6"]) {
  difference() {
    minkowski() {
      cube([20, 20, 20], center=true);
      sphere(2);
    }
    translate([0, 0, 10])
      rotate([0, 0, 0])
        linear_extrude(height=extrusion_height)
          text(labels[0], size=4, halign="center", valign="center", font="Arial:style=Bold");
    translate([0, 0, -10])
      rotate([180, 0, 0])
        linear_extrude(height=extrusion_height)
          text(labels[1], size=4, halign="center", valign="center", font="Arial:style=Bold");
    translate([10, 0, 0])
      rotate([0, 90, 0])
        linear_extrude(height=extrusion_height)
          text(labels[2], size=4, halign="center", valign="center", font="Arial:style=Bold");
    translate([-10, 0, 0])
      rotate([0, -90, 0])
        linear_extrude(height=extrusion_height)
          text(labels[3], size=4, halign="center", valign="center", font="Arial:style=Bold");
    translate([0, 13, 0])
      rotate([90, 0, 0])
        mirror([1, 0, 0])
          linear_extrude(height=extrusion_height)
            text(labels[4], size=4, halign="center", valign="center", font="Arial:style=Bold");
    translate([0, -13, 0])
      rotate([-90, 0, 0])
        mirror([1, 0, 0])
          linear_extrude(height=extrusion_height)
            text(labels[5], size=4, halign="center", valign="center", font="Arial:style=Bold");
  }
}

die();
