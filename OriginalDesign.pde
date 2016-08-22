float rotation = 0.05;
int blue = 0;

void setup()
{
  size(500,500,P3D);
}

void draw()
{
  background(200);
  cube();
  cubeFrame();
  rotation = (rotation + 0.05);
  blue = blue + 1;
  if(blue == 255){
  	blue = 0;
  }
}

void cube()
{

  translate(250,250,250);
  rotateY(rotation);
  rotateX(0.2);
  rotateZ(0.5);
  fill(0,180,blue);
  stroke(0);
  box(40);
}

void cubeFrame()
{
	noFill();
	stroke(255);
	box(60);
}

