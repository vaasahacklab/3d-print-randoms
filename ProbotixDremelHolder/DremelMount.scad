use <Thread_Library.scad>

module base() {
        difference() {
                union() {
                        cylinder(r=35, h=20, $fn=100, center = true);
//*                     translate([0,0,5]) cylinder(r=14, h=3, $fn=100);
                }
                translate([0,0,10]) cylinder(r=30, h=20, $fn=100, center = true);

//              translate([0,0,5]) cylinder(r=14, h=10, $fn=100);
                #translate([0,0,-12.1]) trapezoidThreadNegativeSpace( 
                        length=19,                      // axial length of the threaded rod
                        pitch=2.117,                            // axial distance from crest to crest
                        pitchRadius=19.05/2,                    // radial distance from center to mid-profile
                        threadHeightToPitch=0.5,        // ratio between the height of the profile and the pitch
                                                                // std value for Acme or metric lead screw is 0.5
                        profileRatio=0.5,                       // ratio between the lengths of the raised part of the profile and the pitch
                                                                // std value for Acme or metric lead screw is 0.5
                        threadAngle=29,                         // angle between the two faces of the thread
                                                                // std value for Acme is 29 or for metric lead screw is 30
                        RH=true,                                // true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
                        countersunk=0.5,                // depth of 45 degree chamfered entries, normalized to pitch
                        clearance=0.1,                  // radial clearance, normalized to thread height
                        backlash=0.1,                   // axial clearance, normalized to pitch
                        stepsPerTurn=24                         // number of slices to create per turn
                        );
        }
}

base();
