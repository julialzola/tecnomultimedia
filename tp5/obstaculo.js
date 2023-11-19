class Obstaculo {
  constructor(x, y, tipo) {
    this.x = x;
    this.y = y;
    this.tipo = tipo; 
    this.ancho = 80; 
    this.alto = 80; 
     this.imagen = loadImage('data/planeta1.png'); 
}
  dibujar() {
       image(this.imagen, this.x, this.y, this.ancho, this.alto);
   }

  mover() {
    //movimiento de los obstáculos
    this.x += 4;
    if (this.x > width) {
      this.x = random(-100, 0);
    }
  }
}
