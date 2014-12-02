// basic movement tray dimensions
w=160;
l=100;
h=2.6;

module trayhole(h=3, w=25, l=25) {
  difference()
  {
    cube([l+.5,w+.5,h]);
    hull() {
    translate([(w/2)+.25,(w/2)+.25,0])cylinder(r=(w/2)+0.3,h=h, $fn=120);
    translate([l-((w/2)+.25),(w/2)+.25,0])cylinder(r=(w/2)+0.3,h=h, $fn=120);
    }
  }
}
module trayhole_shadow(h=3, w=25, l=25) {
    cube([l+.5,w+.5,h]);
}
module tray(trayw=160, trayl=100, h=3) {
  translate([-2,-2,0])cube([trayw+4,trayl+4,h]);
}
module circle_tray(w,l,holedim =[25,25],h=3.5)
{
  tray_width=w*holedim[1];
  tray_length=l*holedim[0];
  difference() {
    tray(w*(holedim[0]+.5),l*(holedim[1]+.5),h);
  color("red")  translate([0,0,1.5]) {
        for (i = [0 : 1 : w-1])
        {  
          for (j = [0: 1 : l-1])
          {
            translate([(holedim[0]*i)+.5*i,(holedim[1]*j)+(.5*j),0])
              trayhole_shadow(h*.80, w=holedim[1], l=holedim[0]);
          }
        }
    }
    }
  translate([0,0,1.5]) {
      for (i = [0 : 1 : w-1])
      {  
        for (j = [0: 1 : l-1])
        {
          translate([(holedim[0]*i)+.5*i,(holedim[1]*j)+(.5*j),0])trayhole(h*.60,l=holedim[0],w=holedim[1]);
        }
      }
  }

}

