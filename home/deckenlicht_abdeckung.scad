$fn=200;
width=126;
difference() {
  union() {
    translate([-width/2, -width/2,0]) cube([width,width,2]);
    cylinder(h=20, d=69);
  };
  translate([0,0, -10]) cylinder(h=40,d=67);
};
