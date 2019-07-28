class Sprite 
{
  PImage spritesheet;
  PImage[] movingDown;
  PImage[] movingLeft;
  PImage[] movingRight;
  PImage[] movingUp;
  int imageCount;
  int frame;
  int w;
  int h;
  
  Sprite(String imagePrefix) 
  {
    imageCount = 4;
    movingDown = new PImage[4];
    movingLeft = new PImage[4];
    movingRight = new PImage[4];
    movingUp = new PImage[4];
    String filename = imagePrefix + ".png";
    spritesheet = loadImage(filename);
    w = spritesheet.width / imageCount;
    h = spritesheet.height / imageCount;
    
    for (int i = 0; i < 4; i++) 
    {
      movingDown[i] = spritesheet.get(i * w, 0, w, h);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingLeft[i] = spritesheet.get(i * w, h, w, h);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingRight[i] = spritesheet.get(i * w, 2*h, w, h);
    }
    for (int i = 0; i < 4; i++) 
    {
      movingUp[i] = spritesheet.get(i * w, 3*h, w, h);
    }
  }

  void moveUp(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingUp[frame], xpos, ypos);
  }
  void moveDown(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingDown[frame], xpos, ypos);
  }
  void moveLeft(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingLeft[frame], xpos, ypos);
  }
  void moveRight(float xpos, float ypos) 
  {
    frame = (frame+1) % imageCount;
    image(movingRight[frame], xpos, ypos);
  }
  void standRight(float xpos, float ypos){
    image(movingRight[0], xpos, ypos);
  }
  void standLeft(float xpos, float ypos){
    image(movingLeft[0], xpos, ypos);
  }
  void standUp(float xpos, float ypos){
    image(movingUp[0], xpos, ypos);
  }
  void standDown(float xpos, float ypos){
    image(movingDown[0], xpos, ypos);
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
