//Juliana ALzola
//93553/1
//Comisión 1
//https://youtu.be/DI3MJyv8-pM

let juego;

function setup() {
  createCanvas(1365, 600);
  juego = new Juego();
}

function draw() {
   background(0);
  juego.dibujar();
   if (juego.estadoJuego === 'inicio') {
    juego.pantallaInicio.dibujar();
  }
}

function keyPressed() {
  if (juego.estadoJuego === 'perdiste' && key === 'r') {
    juego.reiniciarJuego();
  }
    else if (juego.estadoJuego === 'ganaste' && key === 'r') {
    juego.reiniciarJuego();
  }
 

}
 function mousePressed() {
if (juego.estadoJuego === 'inicio' && juego.pantallaInicio.clicEnBoton()) {
    juego.estadoJuego = 'jugando';
    }
  }
