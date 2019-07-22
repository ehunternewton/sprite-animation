class Sprite 
{
  PImage spritesheet;
  PImage[] movingDown;
  PImage[] movingLeft;
  PImage[] movingRight;
  PImage[] movingUp;
  int imageCount;
  int frame;
  
  Sprite(String imagePrefix) 
  {
    imageCount = 4;
    movingDown = new PImage[4];
    movingLeft = new PImage[4];
    movingRight = new PImage[4];
    movingUp = new PImage[4];
    
    String filename = imagePrefix + ".png";
    spritesheet = loadImage(filename);

    for (int i = 0; i < 4; i++) 
    {
      movingDown[i] = spritesheet.get(i * 51, 0, 51, 51);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingLeft[i] = spritesheet.get(i * 51, 51, 51, 51);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingRight[i] = spritesheet.get(i * 51, 102, 51, 51);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingUp[i] = spritesheet.get(i * 51, 153, 51, 51);
    }
  }

  void display(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingUp[frame], xpos, ypos);
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
