



wh = 95; // width/height of base plate

d = 2.5; //Depth of baseplate. Decreased height to allow marker.
wsep = 4; //width of separator

inD = 48; //Inner circle diameter. Decreased to allow marker.
ouD = 56; //Outer circle diameter

$fn=50; // Resolution - increase to get nicer circle. Will slow down rendering time significantly. The stl file is set to 150
union(){
    difference(){
        //baseplate
        translate([0,0,d*.5])cube([wh,wh,d],center =true);
    
           //Subtracting outer circle
        cylinder(d,ouD*.5,ouD*.5);
        
    };
    //adding inner circle
    cylinder(d,inD*.5,inD*.5);
    
    //adding separator for holding togehter pieces
    translate([0,0,d*.5])cube([wsep,wh,d],center =true);
    
    //added extra separator for holding togehter pieces. User Input 07082019
    rotate([0,0,90])translate([0,0,d*.5])cube([wsep,wh,d],center =true);
    
};

