int grid = 20; //how big each grid square will be

snake anake;

void setup() {
  size(500, 500);
  snake = new snake();
  frameRate(5);
} 

void draw() {
  background(0);
  snake.update();
  snake.show();
}
