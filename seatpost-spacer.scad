use <Naca4.scad>

$fn=100;

module spacer(height) {
    len=41.4+0.3;

    *cube([20.4, len, height], center=true);

    minkowski()
    {
        rotate([0, 0, 90])
            translate([-len/2+3, 0, 0])
            airfoil(naca=[.0, .25, .42], L=35.7, N=100, h=height / 2, open=true);

        cylinder(h=height / 2, d=6);
    }

}

spacer(43);




