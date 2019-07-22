Sprite animation;

void setup() 
{
  size(640, 360);
  
  frameRate(12);
  
  animation = new Sprite("spritesheet");
}

void draw() 
{ 
  background(153); //what if without this line?
  
  // Display the sprite at the mouse position 
  animation.display(mouseX- animation.getWidth()/2, mouseY- animation.getHeight()/2);
 
}
