class Jugador {
  constructor(vidas) {
    this.x = width / 2;
    this.y = height - 70;
    this.tam = height / 20;
    this.vidas = vidas;
    this.imagennn = loadImage('data/benjamin1.png'); 
     this.ancho = 50; 
    this.alto = 120;
    this.colisionesConPlanetas = 0;
  }

  dibujar() {
    imageMode(CENTER);
    image(this.imagennn, this.x, this.y, this.ancho, this.alto);
  }

  mover() {
    if (keyIsPressed && key === 'd') {
      this.x += 3;
    } else if (keyIsPressed && key === 'a') {
      this.x -= 3;
    } else if (keyIsPressed && key === 'w') {
      this.y -= 5;
    } else if (keyIsPressed && key === 's') {
      this.y += 2;
    }
  }

  colision(obstaculo) {
  
    if (
      this.x > obstaculo.x &&
      this.x < obstaculo.x + obstaculo.ancho &&
      this.y > obstaculo.y &&
      this.y < obstaculo.y + obstaculo.alto
      ) {
     
      this.vidas--;
      this.colisionando = true;
      if (this.vidas === 0) {
 
        juego.estadoJuego = 'perdiste';
      }
      return true;
    } else {
      this.colisionando = false; 
      return false;
    }
  }
  colisionMarte(marte) {
    
    const distancia = dist(this.x, this.y, marte.x, marte.y);
    return distancia < this.tam / 2 + marte.diametro / 2;
  }
}
