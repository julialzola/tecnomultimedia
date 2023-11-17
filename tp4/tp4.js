//Juliana  Alzola
//93553/1
//Comisión 1
//video del recuperatorio: https://youtu.be/hm56b_u_bMU

let r;

let botonx2 = 100;
let botony2 = 50;
let sas = 200;
let pantalla = 0;
let vidas = 10;
let victorias = 0;
let x, y, tam;
let obstaculosX = [];
let obstaculosY;
let obstaculosx2;
let obstaculosy2 = [];
let obstaculosatrasX = [];
let obstaculosatrasx2 = [];
let obstaculosatrasy2 = [];

let obstaculo1, obstaculo2;

let maderasX = 500;

function preload() {
  obstaculo1 = loadImage('data/auto2.png');
  obstaculo2 = loadImage('data/auto1.png');
}

function setup() {
  createCanvas(1365, 600);
  textAlign(CENTER);
  r = random(210);
}

function draw() {
  pantallas();
}

function mousePressed() {
  if (pantalla === 0) {
    if (clickAdentro(width / 2.2, height / 2, botonx2, botony2)) {
      pantalla = 1;
    } else if (clickAdentro(width / 1.5, height - 100, 100, 50)) {
      pantalla = 5;
    } else if (clickAdentro(width / 2.1, height - 100, 100, 50)) {
      pantalla = 4;
    }
  }

  if (pantalla === 1 && clickAdentro(width - 100, height - 50, 80, 40)) {
    pantalla = 0;
  }

  if ((pantalla === 2 || pantalla === 3) && clickAdentro(width / 2.1 + 10, height / 2, botonx2, botony2)) {
    pantalla = 0;
    vidas = 10;
    victorias = 0;
    valoresiniciales();
    tiempo();
    iniciojugador();
  }

  if ((pantalla === 4 || pantalla === 5) && clickAdentro(50, height - 100, 100, 50)) {
    pantalla = 0;
  }
}

function clickAdentro(x, y, width, height) {
  return mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height;
}
