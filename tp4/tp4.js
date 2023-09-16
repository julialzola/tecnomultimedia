//Trabajo Practico nro 4
//Juliana Alzola
//93553/1
//Comisión 1
//https://youtu.be/NaBOxa4mwnQ
var r

let botonx2 = 100
let botony2 = 50
let sas= 200
let pantalla = 0
let vidas = 10
let victorias = 0
let x, y, tam
let obstaculosX = []
//X usado 2 veces
let obstaculosY 
// Y usado 4 veces
let obstaculosx2
//usado 2 veces
let obstaculosy2= []
// usado 2 veces

let obstaculosatrasX = []
//usado 2 veces
let obstaculosatrasx2 = []
//usado 2 veces
let obstaculosatrasy2 = []
//usado 2 veces


let obstaculo1, obstaculo2

let maderasX = 500
function preload() {
  

  obstaculo1 = loadImage('data/auto2.png')
  obstaculo2 = loadImage('data/auto1.png')
  
}

function setup() {

  createCanvas(1365, 600)
    
     textAlign(CENTER)
 // valoresiniciales()
  
  r = random(210)
  }

function draw() {
  

  pantallas()
  
}
function mousePressed() {
    
  
  if (pantalla == 0) {  
  if (mouseX > width/2.2 && mouseX < width/2.2 + botonx2 && mouseY > height/2 && mouseY < height/2 + botony2) {
      
      pantalla = 1
      
  }  
  //instrucciones  
  if (mouseX > width/1.5 && mouseX < width/1.5 + 100 && mouseY > height-100 && mouseY < height-100 + 50) {
    
    pantalla = 5
    
  }
    
  if (mouseX > width/2.1 && mouseX < width/2.1 + 100 && mouseY > height-100 && mouseY < height-100 + 50) {
      
      pantalla = 4
  }
  }  
  
  if (pantalla == 1) {
    
    if ( mouseX > width-100 && mouseX < width-100+80 && mouseY > height-50 && mouseY < height-50 + 40) {
      
      pantalla = 0
      
    }

    
  }
  
  // pantalla perdiste mouse
  if (pantalla == 2) {
    //vidas = 10
    pantalla = 0
    vidas = 10
    victorias = 0
    valoresiniciales()
    tiempo()
    iniciojugador()
    
    if (mouseX > width/2.1 && mouseX < width/2.1 + 100 && mouseY > height/2 && mouseY < height/2 + 50) {
      
      pantalla = 0
      
    }
  }
 // pantalla ganaste mouse
  if (pantalla == 3) {
    //vidas = 10
    pantalla = 0
    vidas = 10
    victorias = 0
    valoresiniciales()
    tiempo()
    iniciojugador()
    
        if (mouseX > width/2.1 && mouseX < width/2.1 + 100 && mouseY > height/2 && mouseY < height/2 + 50) {
      
      pantalla = 0
      
    }
  }
 
  //creditos
  if (pantalla == 4) {
    
      if (mouseX > 50 && mouseX < 50 + 100 && mouseY > height-100 && mouseY < height-100 + 50) {
      
      pantalla = 0
  }
  } 
  
  if (pantalla == 5) 
    if (mouseX > 50 && mouseX< 50 + 100 && mouseY > height-100 && mouseY < height-100 + 50) {
      pantalla = 0
    }
   
}
