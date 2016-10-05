PShape[] obj;
float ax, ay;

void setup() {
  size(500, 500, P3D);
  obj = loadShapeWithTex("Untitled_1.obj", "test.png");
  for (int i=0; i!=obj.length; ++i) {
    obj[i].scale(10);
    obj[i].scale(1, -1, 1);
  }
}

void mouseDragged() {
  ax = map(mouseY, 0, width, -PI, PI);
  ay = map(mouseX, 0, width, -PI, PI);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateX(ax);
  rotateY(ay);

  drawAxis();

  for (int i=0; i!=obj.length; ++i) {
    shape(obj[i]);
  }
}

PShape[] loadShapeWithTex(String objPath, String texPath) {
  PShape parent = loadShape(objPath);
  PImage tex = loadImage(texPath);
  PShape[] faces = new PShape[parent.getChildCount()];

  for (int i=0; i!=faces.length; ++i) {
    PShape s = createShape();
    s.beginShape();

    for (int j=0; j!=parent.getChild(i).getVertexCount(); ++j) {
      s.vertex(parent.getChild(i).getVertex(j).x, 
        parent.getChild(i).getVertex(j).y, 
        parent.getChild(i).getVertex(j).z);
    }

    s.endShape();
    faces[i] = s;
  }

  return faces;
}

void drawAxis() {
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
}