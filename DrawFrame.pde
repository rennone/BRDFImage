import java.lang.StringBuffer;
import java.io.FileWriter;
PImage img;

void setup()
{
  img = loadImage("color1.0.bmp");
  size(img.width, img.height);
  noLoop();
}

void draw()
{  
  image(img, 0, 0);
  println(img.width + "," + img.height);
  stroke(255);
  int q_w = img.width/4;
  int q_h = img.height/4;
  for(int i=1; i<4; i++)
  {
    line(q_w*i, 0, q_w*i, img.height):
    line(0, q_h*i, img.width, q_h*i);
  }
  save("test.png");
}

