PShape obj;

void setup() {
  size(500, 500, P3D);
  obj = loadShape("Untitled_6.obj");
  obj.scale(20);
  obj.scale(1, -1, 1);
  colorMode(HSB);
}

float a = 0;

void draw() {
  background(0);
  ambientLight(map(a, 0, TWO_PI, 0, 256), 255, 255);
  directionalLight(255,255,255, -1, 0, 1);
  translate(width/2, height);
  a += PI/100;
  a %= TWO_PI;
  rotateY(a);
  
  shape(obj);
  /*
  saveFrame("frame-####.png");
  if(a >= TWO_PI){
    exit();
  }
  */
}