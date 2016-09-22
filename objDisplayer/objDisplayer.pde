PShape obj;
PImage tex;

void setup() {
  size(500, 500, P3D);
  obj = loadShape("Untitled_1.obj");
  obj.scale(10);
  obj.scale(1, -1, 1);
  
  tex = loadImage("test.png");
}

void draw() {
  background(0);
  translate(width/2, height/2);
  float ax = map(mouseY, 0, width, -PI, PI);
  float ay = map(mouseX, 0, width, -PI, PI);
  rotateX(ax);
  rotateY(ay);
  
  fill(0, 0, 255);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 500);
  pushMatrix();
  translate(0, 0, 50);
  rotateX(-ax);
  rotateY(-ay);
  text(" Z", 0, 0, 0);
  popMatrix();
  
  fill(255, 0, 0);
  stroke(255, 0, 0);
  line(0, 0, 0, 500, 0, 0);
  pushMatrix();
  translate(50, 15, 0);
  rotateX(-ax);
  rotateY(-ay);
  text(" X", 0, 0, 0);
  popMatrix();
  
  fill(0, 255, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 500, 0);
  pushMatrix();
  translate(0, 50, 0);
  rotateX(-ax);
  rotateY(-ay);
  text(" Y", 0, 0, 0);
  popMatrix();
  
  texture(tex);
  shape(obj);
}