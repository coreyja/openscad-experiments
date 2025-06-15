// All Story Dice Combined
// Generated Story Dice Set - All 6 dice in one file

module genre_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Fantasy", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Sci-Fi", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Mystery", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Horror", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Romance", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Life", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

module setting_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Town", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Ship", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Forest", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Office", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Under", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Sea", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

module character_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Detect", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Student", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Alien", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Artist", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Mechanic", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Time", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

module conflict_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Betray", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Find", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Chase", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Mixup", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Forget", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Rush", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

module tone_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Comedy", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Dark", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Hope", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Weird", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Past", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Tense", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

module plotdevice_die() {
    difference() {
        cube([25.4, 25.4, 25.4], center=true);
        translate([0, 0, 12.7])
        rotate([0, 0, 0])
        linear_extrude(height=2)
        text("Message", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 0, -12.7])
        rotate([180, 0, 0])
        linear_extrude(height=2)
        text("Object", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([12.7, 0, 0])
        rotate([0, 90, 0])
        linear_extrude(height=2)
        text("Stranger", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([-12.7, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(height=2)
        text("Blackout", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, 12.7, 0])
        rotate([90, 0, 0])
        linear_extrude(height=2)
        text("Call", size=4, halign="center", valign="center", font="Arial:style=Bold");
        translate([0, -12.7, 0])
        rotate([-90, 0, 0])
        linear_extrude(height=2)
        text("Diary", size=4, halign="center", valign="center", font="Arial:style=Bold");
    }
}

// Layout all dice for printing
spacing = 35; // 35mm spacing between dice

translate([-spacing, -spacing/2, 0]) genre_die();
translate([0, -spacing/2, 0]) setting_die();
translate([spacing, -spacing/2, 0]) character_die();
translate([-spacing, spacing/2, 0]) conflict_die();
translate([0, spacing/2, 0]) tone_die();
translate([spacing, spacing/2, 0]) plotdevice_die();

// Print all 6 dice at once with this layout
// Print Settings:
// - Layer Height: 0.2mm  
// - Infill: 15-20%
// - Supports: None needed
// - Material: PLA recommended
// - Total print time: ~3-4 hours for all 6 dice