//ALZOLA, Juliana 93553/1
//Comision 1
//TP2
//Video: https://youtu.be/lziHNQ6EFK0

PImage ilusion;
int cant=10;
int tam= 20;

void setup() {
  size(800, 400);

  ilusion = loadImage ("ilusion.jpg");
}
void draw() {
  background(255);
  image(ilusion, 0, 0, 400, 400);

  strokeWeight(10);
  for (int l =0; l<405; l+=tam) {
    for (int l2 =10; l2<405; l2+=tam) {
      stroke(0);
      line (400, l, 800, l);
      stroke(255);
      line (400, l2, 800, l2);
    }
  }

  for (int t = 0; t < 20; t++) {
    noStroke();
    float x1 = 400 + (t * cant);
    float y1 = 400 - (t * cant);
    float x2 = 800 - (t * cant);
    float y2 = 400 - (t * cant);
    float colorV = ColorByN(t, 255, 0, 255, 0);

    if (t % 2 == 0) {
      fill(colorV);
    } else {
      fill(255 - colorV);
    }
    triangle(600, 200, x1, y1, x2, y2);
  }
  for (int t = 0; t < 20; t++) {
    noStroke();
    float x1 = 400 + t * cant;
    float y1 = 0 - (t * -cant);
    float x2 = 800 - t * cant;
    float y2 = 0 - (t * -cant);
    float colorV = ColorByN(t, 255, 0, 255, 0);

    if (t % 2 == 0) {
      fill(colorV);
    } else {
      fill(255 - colorV);
    }
    triangle(600, 200, x1, y1, x2, y2);
  }

  println("x:", mouseX, "y;", mouseY);
}
void mousePressed() { 
cant++;

 tam++;
}
void keyPressed() {
  cant=10;
  tam=20;
}
