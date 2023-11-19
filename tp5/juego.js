class Juego {
  constructor() {
    this.jugador = new Jugador(1); // inicializa el jugador con 1 vida
    this.obstaculos = [];
    this.vidas = [];
    this.crearObstaculos();
    this.crearVidas();
     this.estadoJuego = 'jugando'; 
     this.marte = new Marte();
     this.pantallaInicio = new PantallaInicio();
    this.estadoJuego = 'inicio';
  }

  crearObstaculos() {
 this.obstaculos = [];

   for (let i = 0; i < 3; i++) {
      this.obstaculos.push(new Obstaculo(random(width), height / 3.8 + 85 * (i + 1), 1));
    }

   
    for (let i = 0; i < 2; i++) {
    
      this.obstaculos.push(new Obstaculo(random(width), height / 6.5 + 85 * (i + 1), 2));
  }
  }

  crearVidas() {
    //vidas iniciales del jugador
    for (let i = 0; i < this.jugador.vidas; i++) {
      this.vidas.push(new Vida(60 + 30 * i, height - 50));
    }
  }

  dibujar() {
 if (this.estadoJuego === 'jugando') {
      for (let vida of this.vidas) {
        vida.dibujar();
      }

      this.jugador.dibujar();
      this.jugador.mover();

      for (let obstaculo of this.obstaculos) {
        obstaculo.dibujar();
        obstaculo.mover();

        if (this.jugador.colision(obstaculo)) {
          this.vidas.pop();
          if (this.vidas.length === 0) {
            this.estadoJuego = 'perdiste';
          }
        }
        this.marte.dibujar();

    // verificar colisión con Marte
    if (this.jugador.colisionMarte(this.marte)) {
      this.estadoJuego = 'ganaste';
    }
      }
    }  else if (this.estadoJuego === 'perdiste') {
      // pantalla de perdiste
      textSize(50);
      fill(255, 0, 0);
      text('¡Perdiste!', width / 2, height / 2);
      textSize(25);
      fill(100);
      text('Presiona R para reiniciar', width / 2, height / 1.8);
    }
    if (this.estadoJuego === 'jugando') {
 
    } else if (this.estadoJuego === 'perdiste') {
      
    } else if (this.estadoJuego === 'ganaste') {
      // Pantalla de "Ganaste"
      textSize(50);
      fill(0, 255, 0); // Color verde para el mensaje de ganaste
      text('¡Ganaste!', width / 2, height / 2);
      textSize(25);
      fill(100);
      text('Presiona R para reiniciar', width / 2, height / 1.8);
    }
        if (this.estadoJuego === 'inicio') {
      this.pantallaInicio.dibujar();
    } else if (this.estadoJuego === 'jugando') {
     
    } else if (this.estadoJuego === 'perdiste') {
      
    } else if (this.estadoJuego === 'ganaste') {
     
    }

  }

  reiniciarJuego() {
    this.jugador.vidas = 1;
    this.vidas = [];
    this.crearVidas();
    this.jugador.x = width / 2;
    this.jugador.y = height - 70;
    this.estadoJuego = 'inicio';
  }
}
