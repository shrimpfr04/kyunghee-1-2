void Bonobono2(float x, float y, float d){
  d = d/7;
  fill(135,206,250);
  stroke(135,206,250);
  square(x-d*16,y+d*28,d*32);
  stroke(0,0,0);
  circle(x,y+d,d*64);
  arc(x-d*16,y+d*60,d*24,d*64,PI,PI+HALF_PI);
  arc(x+d*16,y+d*60,d*24,d*64,PI+HALF_PI,TWO_PI);
  
  fill(255,250,250);
  stroke(255,250,250);
  circle(x-d*8,y+d*8,d*16);
  circle(x+d*8,y+d*8,d*16);
  rect(x-d*8,y,d*16,d*8);
 
  fill(0,0,0);
  stroke(0,0,0);
  circle(x-d*22,y-d*10,d*3);
  circle(x+d*22,y-d*10,d*3);
  circle(x,y,d*7);
}
void Lines(float a,float b, float c){
 line(a-c*16,b,a-c*8,b+c*4);
 line(a+c*8,b+c*4,a+c*16,b);
 line(a-c*8,b+c*8,a-c*20,b+c*8);
 line(a+c*8,b+c*8,a+c*20,b+c*8);
 line(a-c*16,b+c*16,a-c*8,b+c*12);
 line(a+c*8,b+c*12,a+c*16,b+c*16);
 line(a+c*5,b+c*52,a+c*20,b+c*44);
 line(a-c*20,b+c*44,a-c*7,b+c*52);
 line(a-c*19,b+c*58,a-c*2,b+c*58);
 line(a+c*20,b+c*58,a+c*8,b+c*58);
 fill(219,112,147);
 arc(a-c*4,b+c*60,c*8,c*24,PI,HALF_PI+PI);
 arc(a-c*4,b+c*60,c*24,c*24,HALF_PI+PI,TWO_PI);
}
