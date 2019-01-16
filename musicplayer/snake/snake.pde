class snake{
  PVector pos;
  PVector vel;
  ArrayList<PVector> hist;
  int len;
  
  snake(){
     pos = new PVector(0,0);
     vel = new PVector();
     hist = new ArrayList<PVector>();
     len = 10;
  }
  void update() {
    hist.add(pos.copy());
    pos.x += vel.x*gride;
    pos.y += vel.y*gride;
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
 if(keyCode == LEFT) {
 if (key == LEFT) {
   snake.vel.x = -1;
   snake.vel.y = 0;
 } else if (keyCode == RIGHT) {
   snake.vel.x = 1;
   snake.vel.y = 0;
 }
 if (keycode == up) {
   snake.vel.y = 1;
   snake.vel.x = 0;
 } else if (keyCode == DOWN) {
   snake.vel.y = 1;
   snake.vel.x = 0;
 }
}
      
      
      
      
      
      
      
      
      
      
      
      

void keyPressed(){
 
}
