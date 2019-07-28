Sprite animation;
int x = 291;
int y = 198;
int speed = 5;
String direction = "down"; 
boolean onEdge = false;

void setup() 
{
  size(640, 360);

  frameRate(12);

  animation = new Sprite("transparentSpriteSheet");
  //animation = new Sprite("chrono");
  //animation = new Sprite("fire");
}

void draw() 
{ 
  background(51);
  textSize(32);
  textAlign(CENTER);
  if (onEdge) {
    fill(255,195,100);
    text("OUCH!", width/2, height/2); 
    textSize(16);
    text("who put that there??", width/2, height/2 + height/9);
  } else {
    fill(255);
    text("This is the entire world!", width/2, height/2);
    textSize(16);
    text("use WASD to move around", width/2, height/2 + height/4);
  }
  
  if (keyPressed == true)
  {
    if (direction == "up")
    {
      if (y <= 0)
      {
        onEdge = true;
        y = 0;
      } else {
        y -= speed;
        onEdge = false;
      }
      animation.moveUp(x, y);
    } 
    else if (direction == "down")
    {
      if (y >= height - animation.h) {
        onEdge = true;
        y = height - animation.h;
      } else {
        y += speed;
        onEdge = false;
      }
      animation.moveDown(x, y);
    } 
    else if (direction == "left")
    {
      if (x <= 0) {
        onEdge = true;
        x = 0;
      } else {
        x -= speed;
        onEdge = false;
      }
      animation.moveLeft(x, y);
    } 
    else if (direction == "right")
    {
      if (x >= width - animation.w) {
        onEdge = true;
        x = width - animation.w;
      } else {
        x += speed;
        onEdge = false;
      }
      animation.moveRight(x, y);
    }
    else
    {
      animation.standDown(x,y);
    }
  } 
  else 
  {
    if (direction == "right") 
    {
      animation.standRight(x, y);
    } 
    else if (direction == "left") 
    {
      animation.standLeft(x, y);
    } 
    else if (direction == "up") 
    {
      animation.standUp(x, y);
    } 
    else if (direction == "down") 
    {
      animation.standDown(x, y);
    }
    else
    {
      animation.standDown(x,y);
    }
  }
}

void keyPressed() 
{
  if (key == 'w' || key == 'W') 
  {
    direction = "up";
  } 
  else if (key =='s' || key == 'S') 
  {
    direction = "down";
  } 
  else if (key == 'a' || key == 'A') 
  {
    direction = "left";
  }
  else if (key == 'd' || key == 'D') 
  {
    direction = "right";
  } else {
    direction = "";
  }
}
