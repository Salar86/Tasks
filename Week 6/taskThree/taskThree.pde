float w = 255;
float r = 200;
float g = 210;
float b = 205;
float o = 150;
int squareX = 250;
int squareY = 50;
int boxW = 300;
int boxH = 600;
int lgt = 90;
int crcX = 400;
int crcY = 150;
int crcW = 150;
int crcH = 150;
int change = 200;

void setup()
{
size (800,800);
}
void draw()
{
  background (w);
  fill (0);
  rect (squareX, squareY, boxW, boxH);
  fill (r,0,0);
  ellipse (crcX, crcY, crcW, crcH);
  fill (r,g,0);
  ellipse (crcX, crcY + change, crcW, crcH);
  fill (0,g,0);
  ellipse (crcX, crcY + change + 200, crcW, crcH);
  if (mousePressed)
  { 
    fill (o);
    ellipse (crcX, crcY, crcW, crcH);
    ellipse (crcX, crcY + change, crcW, crcH);
  }
  if (keyPressed)
  {
    fill(o);
    ellipse (crcX, crcY + change, crcW, crcH);
    ellipse (crcX, crcY + change + 200, crcW, crcH);
  }
}
