// main body odf a small windmill
// it uses a stepper motor as generator and two ball bearings to spin in the vertical axis


$fn=120; //cylinder resolution
         
difference(){
    
    // external hull
    
    hull(){
        cube([24,40,40],center=true);
        translate([25,0,0]){
            cylinder(40,d=30,center=true);
        }
        
        translate([85,0,0]){
            cube([20,10,40],center=true);
        }
    }
    
    
    // cutout stepper motor (/generator)
    
    translate([0,0,2]){
        cube([20,35.3,40],center=true);
        translate([-10,0,0]){
            rotate([0,90,0]){
                cylinder(22,d=22,center=true);
                translate([-11,0,0]){
                   cube([22,22,22],center=true);
                }
            }
        }
    }
    
    
    // cutout bearings
    
    translate([25,0,0]){
        translate([0,0,16]){
            cylinder(8.2,d=26,center=true);
        }
        translate([0,0,-16]){
            cylinder(8.2,d=26,center=true);
        }
        cylinder(24,d=25,center=true);
    }
    
    
    // cutout slipring mounting holes
    
    translate([25,0,0]){
        for (a=[-45:90:359]){
            rotate([0,0,a]){
                translate([17,0,0]){
                    cylinder(50,d=3.1,center=true);
                }
            }
        }
    }
    
    
    // cutout back
    
    
    translate([80,0,0]){
        rotate([0,90,0]){
            cylinder(90,d=8,center=true);
        }
            
        translate([0,2,0]){
            translate([0,-12,0]){
                cube([71,20,41],center=true);
            }    
        }
        
        for (iy=[-15:7.5:15]){
            if(iy!=0){
                for (ix=[-30:10:20]){
                    translate([ix,0,iy]){
                        rotate([90,0,0]){
                            cylinder($fn=24,90,d=4,center=true);
                        }
                    }
                }
            }
        }
    }
}

/*

// breadboard mounting board
difference(){
    translate ([55,-2,10]){
        color("red") cube([50,2,50]);
    }
    // cutout back
    
    translate([80,0,0]){ // holes
        for (ix=[-30:10:20]){
            translate([ix,0,15]){
                rotate([90,0,0]){
                    cylinder($fn=24,90,d=4,center=true);
                }
            }
        }
    }
    translate ([56.75,-12,22]){
    color("green")cube([46.5,10.5,36]); // mini breadboard
    } 
}
*/

