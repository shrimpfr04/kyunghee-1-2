void Thomas(float x, float y,float d){
  strokeWeight(5);
  fill(0,0,0);
  square(x-d*2,y-d*7,d*4);
  
  fill(211,211,211);
  circle(x,y,d*10);
  
  fill(255,255,255);
  circle(x-d*2,y-d*2,d*3);
  circle(x+d*2,y-d*2,d*3);
  
  fill(0,0,0);
  circle(x-d*2.5,y-d*2,d*2);
  circle(x+d*1.5,y-d*2,d*2);
  
  arc(x,y+d,d*6,d*4,0,PI);
}
