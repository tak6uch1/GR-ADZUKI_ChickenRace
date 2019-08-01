// Variables
r_hole = 1.9;

// Roughness of circle
$fs = 0.01;

rotate([0, 90, 0])
union(){
// 48mm x 104mm punched board
difference(){
    translate([-22, -34, 0])
        linear_extrude(height=3)
            offset(2)
                square([44, 100]);
    // Holes
    for(x=[-20:5:20])
        for(y=[-25:5:60])
            translate([x, y, -1])
                cylinder(h=6, r=r_hole);
}

// Back connection
difference(){
    translate([-11, -36, 2])
        cube(size = [22, 1, 12]);
    // Notch -
    translate([8.5, -40, 14])
        rotate([-90, 0, 0])
            cylinder(h=10, r=1.1);
}
// Notch +
translate([-8.5, -35.5, 14])
    sphere(d=1.4);
// Back hook
translate([0, -36, 14])
    rotate([90, 0, 0])
        difference(){
            cylinder(h=3.6, r1=2.3, r2=2);
            translate([-2.5, 0, -1])
                cube([5, 5, 5]);
        }
translate([0, -38.6, 12.5])
    rotate([90, 0, 0])
        cylinder(h=1, r=1.4);

// Supporter
translate([11, -35, 3])
    rotate([0, -90, 0])
        linear_extrude(height=2)
            polygon(points = [[0,0], [0,6], [6,0]]);
translate([-9, -35, 3])
    rotate([0, -90, 0])
        linear_extrude(height=2)
            polygon(points = [[0,0], [0,6], [6,0]]);
// Supporter for manufacturing
translate([11, -35, 2])
    rotate([90, 0, 0])
        linear_extrude(height=1)
            polygon(points = [[0,0], [0,12], [10,0]]);
translate([-11, -36, 2])
    rotate([90, 0, 180])
        linear_extrude(height=1)
            polygon(points = [[0,0], [0,12], [10,0]]);

// Distance detector's base
translate([0, 68, 0])
    rotate([72, 0, 0])
        difference(){
            translate([-22, 2, 0])
                linear_extrude(height=2)
                    offset(2)
                        square([44, 13]);
            union(){
                translate([-18.5, 8, -1])
                    cylinder(h=4, r=r_hole);
                translate([18.5, 8, -1])
                    cylinder(h=4, r=r_hole);
            }
        }

// Front hook
translate([-7, 71, 16])
    cube([14, 1, 4]);
difference(){
    translate([-7, 71.2, 20])
        rotate([90, 0, 90])
            linear_extrude(height=14)
                offset(0.2)
                    square([3.6, 0.6]);
    // Taper cut
    union(){
        translate([7, 71, 19.5])
            linear_extrude(height=2)
                polygon(points = [[0,0], [0,4.5], [-1,4.5]]);
        translate([-7, 71, 19.5])
            linear_extrude(height=2)
                polygon(points = [[0,0], [0,4.5], [1,4.5]]);
    }
}

// Supporter
translate([11, 68.9, 3])
    rotate([0, -90, 180])
        linear_extrude(height=2)
            polygon(points = [[0,0], [0,6], [6,0]]);
translate([-13, 68.9, 3])
    rotate([0, -90, 180])
        linear_extrude(height=2)
            polygon(points = [[0,0], [0,6], [6,0]]);
// Side supporter
translate([7, 72, 16])
    rotate([90, 0, 0])
        linear_extrude(height=1)
            polygon(points = [[0,0], [0,3.5], [2,0]]);
translate([-7, 71, 16])
    rotate([90, 0, 180])
        linear_extrude(height=1)
            polygon(points = [[0,0], [0,3.5], [2,0]]);
}