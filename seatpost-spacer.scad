use <naca4.scad>

$fn=100;

module spacer(height) {
    *cube([d1, 40.5, height]);

    minkowski()
    {
        rotate([0, 0, 90])
        translate([3, -20.5 / 2, 0])
            airfoil(naca=[.0, .25, .42], L=34.5, N=100, h=height / 2, open=true);

        cylinder(h=height / 2, d=6);
    }
}

spacer(5);




