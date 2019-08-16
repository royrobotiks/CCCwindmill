// windmill hub - blades can be connected with 6 M4 screws + nuts


module screw(){
        union(){
        // screw thread
        cylinder ($fn=24,30,d=4.2,center=true); 
        // screw head
        translate([0,0,10]){
            cylinder ($fn=36,8,d=7.2,center=true); 
        }
        // nut
        hull(){
            cylinder ($fn=6,3.4,d=8.2,center=true); 
            translate([10,0,0]){
                cube([7.1,7.3,3.4],center=true);
            }
        }
    }
}




difference(){
    $fn=120; //cylinder resolution
    cylinder (22,d=60,center=true);  // outer cylinder
    /*translate([0,0,-5]){
        sphere(d=60);
    }*/
    cylinder ($fn=24,80,d=5.4,center=true); // inner hub hole
    translate([0,0,-22]){
        cube([100,100,20],true);
    }
    // set screw
    rotate([0,0,6]){
        translate([0,-20,-5]){
            rotate([90,0,0]){
                screw();                         
            }
        }
    }
    for (angle=[0:120:359]){
           rotate([0,0,angle]){
            // blade mount cutouts
               
            translate([20,-9,0]){
                cube([20,10,30], center=true);
            }
                    
            translate([20,0,15]){
                rotate([45,0,0,]){
                    translate([0,0,3]){
                        cube([20,80,30], center=true);
                    }
                    translate([0,-12,-18]){
                        screw();
                    }
                    translate([0,3,-18]){
                        screw();
                    }
                } 
            }
        }
    }
}


