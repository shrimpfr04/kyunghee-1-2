void Bonobono1(float x, float y, float d){
  fill(130, 190 ,222);
  circle(x,y,d*10);
  fill(0,0,0);
  circle(x-d*3, y-d*2, d*1.2);
  circle(x+d*3, y-d*2, d*1.2);
  fill(250,250,250);
  ellipse(x-d, y+d*2, d*2, d*2.5);
  ellipse(x+d, y+d*2, d*2, d*2.5);
  fill(0,0,0);
  circle(x, y+d, d*2.2);
  
  line(x-d*1.5, y+d*2.5, x-d*2.8, y+d*2.8);
  line(x-d*1.5, y+d*2, x-d*3, y+d*2);
  line(x-d*1.5, y+d*1.5, x-d*2.8, y+d*1.2);

  line(x+d*1.5, y+d*2.5, x+d*2.8, y+d*2.8);
  line(x+d*1.5, y+d*2, x+d*3, y+d*2);
  line(x+d*1.5, y+d*1.5, x+d*2.8, y+d*1.2);
}
