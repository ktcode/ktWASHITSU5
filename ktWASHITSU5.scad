//
// ktWASHITSU5
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;






goishi();

module goishi()
{
difference()
{
    union()
    {
        //translate([0, 0, 0]) sphere(r=22/2, $fn=100);


        translate([0, 0, 0]) resize(newsize=[22, 22, 3+1*2]) sphere(r=1, $fn=100);

    }
    translate([-25, -25, -50]) cube([50, 50, 50]);
    translate([0, 0, -3.4/2]) cylinder(h=3.4, r=6.4/2, $fn=100);
}
}

