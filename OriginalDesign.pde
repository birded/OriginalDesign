void setup()
{
  size(500,500,P3D);
}

void draw()
{
  //ellipse(50,50,50,50);
  //int r = 0.1;    how do i do this
  //r += 0.1 ;
  translate(250,250,250);
  rotateY(r);
  rotateX(0.5);
  noFill();
  box(40);
}



