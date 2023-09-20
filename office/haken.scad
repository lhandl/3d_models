// Allgemein
height=3;
width=5;

// Aufhängung
aufhaengungsanzahl=3;
lochabstand=30;
lochtiefe=20;
lochhakenlaenge=7;

// Haken
hakentiefe = 25;
hakenlaenge = 20;


module aufhaengung(position) {
  y_off = lochabstand*position;
  cube([width, y_off, height]);
  translate([0, y_off, 0]) cube([lochtiefe, width, height]);
  translate([lochtiefe-width, y_off-lochhakenlaenge, 0]) cube([width, lochhakenlaenge, height]);
}


module haken() {
  translate([-hakentiefe, hakentiefe, 0]) cube([hakentiefe, width, height]);
  translate([-hakentiefe, hakentiefe, 0 ]) cube([width, hakenlaenge, height]);

  // Stütze
  diag = sqrt(pow(hakentiefe,2) + pow(hakentiefe,2));
  winkel = 45;
  translate([0, 0, 0 ]) rotate([0, 0, winkel]) cube([width, diag, height]);
}


for (i = [ 0 : aufhaengungsanzahl -1 ]) {
  aufhaengung(i);
}
haken();
