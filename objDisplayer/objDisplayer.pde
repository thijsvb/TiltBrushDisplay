PShape obj;

void setup() {
  size(500, 500, P3D);
  //obj = loadShape("Untitled_1.obj");
}

void draw() {
  translate(width/2, height/2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, width, -PI, PI));
  background(0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 500);
  stroke(255, 0, 0);
  line(0, 0, 0, 500, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 500, 0);
}