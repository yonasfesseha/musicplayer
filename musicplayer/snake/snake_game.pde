int grid = 20; //how big each grid square will be

snake snake;

void setup() {
  size(500, 500);
  snake = new snake();
  food = new pvector();
  newfood();
  //frameRate(8);
  } 

void draw() {
  background(0);
 if (!dead) {
   if (framecount % speed == 0) {
     snake.update();
   }
   snake.show();
   snake.eat();
   fill(255, 0, 0);
   rect(food.x, food.y, grid, grid);
 } else {
   fill(225);
   textAlign(CENTER,CENTER);
   textSize(25);
   text("snake game\nClick to start" + "\nHighscore: " + highscore, width/2, height/2);
 }
}
void newfood() {
  food.x = floor(random(width));
  food.y = floor(random(height));
  food.x = floor(food.x/grid) *grid
  food.x = floor(food.y/grid) *grid
   
   
   
   
   
   
   
   
