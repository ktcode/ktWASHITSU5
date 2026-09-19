//
// ktWASHITSU5
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;






//goishi();
goishi_19();
//goban();
//sen();

module goishi()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) resize(newsize=[22, 22, 3+1*2]) sphere(r=1, $fn=100);
    }
    translate([-25, -25, -50]) cube([50, 50, 50]);
    translate([0, 0, -3.4/2]) cylinder(h=3.4, r=6.4/2, $fn=100);
}
}



module goishi_19()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) resize(newsize=[19, 19, 3+1*2+0.5]) sphere(r=1, $fn=100);
    }
    translate([-25, -25, -50]) cube([50, 50, 50]);
    translate([0, 0, -3.3/2]) cylinder(h=3.5, r=6.6/2, $fn=100);
}
}


module goban()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([171+9, 180+9, 1]);
    }

    translate([9/2+19/2+19*4, 9/2+20/2+20*4, 1-0.3+gap1]) cylinder(h=0.3, r=3/2, $fn=100);
    for(i=[0:1:8])
    {
        translate([9/2+19/2-0.5/2, 9/2+20/2+20*i-0.5/2, 1-0.3+gap1]) cube([19*8+0.5, 0.5, 0.3]);
    }

    for(i=[0:1:8])
    {
        translate([9/2+19/2+19*i-0.5/2, 9/2+20/2-0.5/2, 1-0.3+gap1]) cube([0.5, 20*8+0.5, 0.3]);
    }
}
}



module sen()
{
difference()
{
    union()
    {
        translate([-2.5, 0, 0]) cube([200, 10, 2]);
    }
    translate([0, 5, -0.8]) rotate([45, 0, 0]) cube([195, 15, 15]);
}
}

