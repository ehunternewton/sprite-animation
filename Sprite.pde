class Sprite 
{
  PImage spritesheet;
  PImage[] movingDown;
  int imageCount;
  int frame;
  
  Sprite(String imagePrefix) 
  {
    imageCount = 4;
    movingDown = new PImage[4];
    
    String filename = imagePrefix + ".png";
    spritesheet = loadImage(filename);

    for (int i = 0; i < 4; i++) 
    {
      movingDown[i] = spritesheet.get(i * 51, 0, 51, 51);
    }
  }

  void display(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingDown[frame], xpos, ypos);
  }
  
  int getWidth() 
  {
    return movingDown[0].width;
  }
  
  int getHeight()
  {
    return movingDown[0].height;
  }
  
}
