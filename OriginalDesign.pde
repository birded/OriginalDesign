float rotation = 0.05;
boolean down = false;
int blue = 0;
int red = 0;
float draggedRotationX = 0;

void setup()
{
  size(500,500,P3D);
}

void draw()
{
  background(200);
  translate(250,250,150);
  cube();
  cubeFrame();
  rotation = (rotation + 0.05);

  //cube color transitioning
  if(blue == 255){
  	down = true;
  }
  if(blue == 0){
  	down = false;
  }

  if (down == true){
	blue = blue - 1;
  }
  if (down == false){
  	blue = blue + 1;
  }
}


void cube()
{
  pushMatrix();
  rotateY(rotation);
  rotateX(0.2);
  rotateZ(0.5);
  fill(red,180,blue);
  stroke(0);
  box(100);
  popMatrix();
}

void cubeFrame()
{
  //rotate based on mouse position
  rotateY(0.01*(mouseX));
  rotateX(0.01*(mouseY));
  rotateZ(0.5);
  noFill();
  stroke(255);
  box(140);
}

void mousePressed(){
	red = (int)random(0,255);
	//change red value of inner cube upon mouse press
}

void mouseDragged(){
	draggedRotationX = (pmouseY - mouseY) *0.05 ;
}
