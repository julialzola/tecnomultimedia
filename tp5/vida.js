class Vida {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.diametro = 20;
  }

  dibujar() {
    fill(100);
    circle(this.x, this.y, this.diametro);
  }
}
