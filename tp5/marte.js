class Marte {
  constructor() {
    this.x = width / 2;
    this.y = 50;
    this.diametro = 50;
    this.imagenn = loadImage('data/marte.png'); 
     this.ancho = 70;
    this.alto = 70;
  }

  dibujar() {
   
    imageMode(CENTER);
    image(this.imagenn, this.x, this.y, this.ancho, this.alto);
  }
}
