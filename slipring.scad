// slipring assembly for the CCCwindmill
// requires 2 pieces of 22m copper pipes and motor brushes
// the slipring assy can be printed several times in order to connect several wires to the windmill's main body

// big distance ring top
difference(){

        translate([0,0,4]){
            cylinder($fn=72,1.5,d=24,center=false); 
            cylinder($fn=72,2,d=14,center=false); 
        }
    
    
    cylinder($fn=72,20,d=10.2,center=true); // center hole

}
// copper ring mount

difference(){
    union(){
        translate([0,0,-1]){
            cylinder($fn=72,6,d=19.2,center=true); 
        }
        translate([0,0,3]){
            cylinder($fn=72,2,d1=19.2,d2=18,center=true); 
        }
        translate([0,0,-5]){
            cylinder($fn=72,2,d=24,center=true); 
        }
    }
    
    cylinder($fn=72,20,d=10.2,center=true); // center hole
    translate([0,8,0]){
       cube([4,3.2,20],center=true);
    }
        translate([0,-8,0]){
       cube([4,3.2,20],center=true);
    }
}


// copper ring
difference(){
    color("red",.5) cylinder($fn=72,8,d=22,center=true); 
    color("red",.5) cylinder($fn=72,9,d=19.2,center=true); 
}

// below ringmount cable channels

translate([0,0,-10]){
    difference(){
        
    cylinder($fn=72,8,d=24,center=true);    // basic cylinder
    cylinder($fn=72,20,d=10.2,center=true); // center hole
        
        for (r=[0,180,185]){                // two wire channels
            rotate([0,0,r]){
                translate([0,8,9.5]){
                cube([4,3.2,20],center=true);
                }
                translate([0,10.7,0]){
                    rotate([-15,0,0]){
                    cube([4,8,4],center=true);
                    }
                }
            }
        }
    }
}


// brush mount
difference(){

    cylinder($fn=100,8,d=48,center=true);
    
    cylinder($fn=72,11,d=27,center=true);
    
    // brush
    translate([11.5/2+11,0,0]){
        cube([11.5,8,5],center=true); 
        rotate([0,90,0]){
            translate([0,0,5]){
            cylinder($fn=24,10,d=4,center=true);
            }
        }
        
        translate([0,0,5]){
            cube([15,7,10],center=true); 
        }
    }
    
    // pivot hole
    rotate([0,0,-45]){
        translate([17,0,0]){
            cylinder($fn=24,50,d=3.5,center=true);
        }
    }
    
    // rubber slot
    translate([10,22,0]){
        rotate([0,0,25]){
            cube([10,4,10],center=true);
            translate([-5,0,0]){
                cylinder($fn=24,50,d=4,center=true);
            }
            translate([-40,-20,0]){
                cube([47,60,20],center=true);
            }
        }
    }
    
    translate([-30,0,0]){
        cube([60,60,20],center=true);
    }
    
    // flat part slot
    translate([0,25,10]){
            cube([60,35,24],center=true);

    }
    
}

// distance ring bottom
rotate([0,0,-45]){
    translate([17,0,-5]){
        difference(){      
        cylinder($fn=36,2,d=8,center=true);         
        cylinder($fn=24,50,d=3.5,center=true); // pivot hole
        }
    }
}
// distance ring top
rotate([0,0,-45]){
    translate([17,0,5]){
        difference(){      
        cylinder($fn=36,2,d=8,center=true);         
        cylinder($fn=24,50,d=3.5,center=true); // pivot hole
        }
    }
}
