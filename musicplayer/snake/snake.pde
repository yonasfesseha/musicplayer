class snake{
  PVector pos;
  PVector vel;
  ArrayList<PVector> hist;
  int len;
  int movex = 0;
  int movey = 0;
  
  snake(){
     pos = new PVector(0,0);
     vel = new PVector();
     hist = new ArrayList<PVector>();
     len = 0;
  }
  void update() {
    hist.add(pos.copy());
    pos.x += vel.x*gride;
    pos.y += vel.y*gride;
    moveX = int(vel.x);
    moveY = int(vel.y);
    
    pos.x = (pos.x + width) % width;
    pos.y = (pos.y + height) % height;
    
    if (hist.size() > len) {
      hist.remove(0);
    }
  }
  void show() {
    noStroke();
    fill(125);
    rect(pos.x, pos.y, grid, grid)
    for (PVector p : hist) {
      rect(p.x, p.y, grid, grid);
    }
  }
}
void keyPressed() {
 if(keyCode == LEFT && snake.moveX !=1) { {
   snake.vel.x = -1;
   snake.vel.y = 0;
 } else if (keyCode == RIGHT && snake.moveX != -1) {
   snake.vel.x = 1;
   snake.vel.y = 0;
 } else if (keycode == up &&snake.moveY !=1) {
   snake.vel.y = 1;
   snake.vel.x = 0;
 } else if (keyCode == DOWN && snake.moveY != -1) {
   snake.vel.y = 1;
   snake.vel.x = 0;
 }
}
      
      
      
      
      
      
      
      
      
      
      
