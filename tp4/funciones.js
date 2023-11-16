function pantallas() {
  background(0);

  if (pantalla === 0) {
    estilo();
    vidas = 10;
    victorias = 0;
    valoresiniciales();
    iniciojugador();
  } else if (pantalla === 1) {
    barreras();
    estilo();
    juego();
  } else if (pantalla === 2 || pantalla === 3) {
    background(20);
    estilo();
    mostrarResultado(pantalla);
  } else if (pantalla === 4 || pantalla === 5) {
    background(0);
    estilo();
    // Creditos o Instrucciones
  }
}
function estilo() {
  
  if (pantalla == 0) {

    push()
    fill(255)
    textSize(70)
    text("¡¡Cruza \n la callee!!",width/2+20 , height/4.5)
    textSize(30)
    fill(250, 0, 30,)
    text("Frogger", width/2+20, height/2.2)

    pop()
    
  
    
    push()
    fill(255)
    rect(width/2.1, height/2, botonx2, botony2)
    fill(20)
    textSize(25)
    text("Iniciar", width/2.1, height/1.8, botonx2, botony2)
    pop()  

    //instrucciones boton
    push()
    rect(width/1.6+32, height-100, 155, 50)
    fill(20)
    textSize(25)
    text("Instrucciones", width/1.5, height-68, 100, 50)
    pop()
    
    //creditos boton
    push()
    rect(width/2.1, height-100, 100, 50)
    fill(20)
    textSize(25)
    text("creditos", width/2.1, height-68, 100, 50)
    pop()  
    
  }
  
  if (pantalla == 1) {
    
  background(20);  
     
  // veredas  
  push()
  noStroke()
 
  fill(0, 150, 10)
  rect(0, 0, width, 35)
  
  fill(196, 223, 223)
  rect(0, height/2.3, width, 35)
   
  rect(0, height-90, width, height)
  pop()
  
  // interfaz vidas 
  push()
  fill(0)
  textSize(20)  
  text("vidas: "+ vidas, 85, height-15)
  pop() 
  
  for (let i = 0; i < vidas; i++) {
  circle(60+50*i/2, height-50, 20, 20)
  }    
    
  //zona meta y victorias
  for(let i = 0; i < 5; i++) {
  push()
  noStroke()
  fill(20)
    //100+265*i
  rect(width/10+width/5*i, 10, 100, 25)
  pop()
  }
 
  for(let i = 0; i < victorias; i++) {
  push()
  circle(width/7.5+width/5*i, 25, 23, 23)
  pop()
  }  
    //menu boton
  push()
  textSize(20)
  rect(width-100, height-50, 80, 40)
  text("Menú", width-60, height-25)

  pop()
    
  }
  
  if (pantalla == 2) {
  
  push()
  fill(255, 150, 150) 
  textSize(50)
  text("Perdiste", width/2, height/3) 
  pop()
    
  push()
  textSize(25)

  rect(width/2.2+10, height/2, botonx2, botony2)
  text("Reiniciar", width/2, height/1.8) 
  pop() 
  }
  
  if (pantalla == 3) {
  
  push()
  fill(150, 255, 150) 
  textSize(50)
  text("¡¡Ganaste!!", width/2, height/3)
  pop()
    
  push()
  textSize(25)
  rect(width/2.2+10, height/2, botonx2, botony2)
  text("Reiniciar", width/2, height/1.8) 
  pop() 
    
  }
  
  //creditos
  if (pantalla == 4) {
     textSize(30)
    fill(250)
    text("Juliana Alzola\n 93553/1 \n Comisión 1 \n Prof Jose Bugiolachi", width/2+20, height/2.2)
    push()
    textSize(25)
    rect(50, height-100, 100, 50)
      fill(0)
    text("Atrás", 100, height-68)
    pop()
    
    
  }
  
  if (pantalla == 5) {
    
    // instrucciones
    //paso 1
    push()
    fill(255)
    textSize(25)
    text("Para mover a la pelota,\nusa las teclas a, s, w, d", width/5, height/4)
    pop()
    
    circle(width/5, height/2, 30, 30)
    
    
    push()
    fill(255)
    textSize(25)
    text("Tu objetivo: llegar \na la vereda\n de color verde", width/2, height/4)
    pop()
    
    push()
    fill(0, 200, 0)
    rect(width/2, height/2.5, 60, 20)
    fill(0)
    rect(width/2+15, height/2.4, 30, 15)
    pop()
    
    
    push()
    fill(255)
    textSize(25)
    text("¡Esquiva los autos \n usando las teclas!", width/2, height/1.8)
    pop()
    
    image(obstaculo1, width/2, height/1.4, 140, 100)
    
        push()
    noStroke()
    
    push()
    fill(255)
    textSize(25)
    text("Si chocás con\n un auto mas de 10 \n veces perdés el juego. \n Si más de 5 pelotas \nllegan a la \n  vereda ganaste!", width/1.2, height/4)
    pop()
    
    push()
    textSize(25)
    rect(50, height-100, 100, 50)
    text("Atrás", 100, height-68)
    pop()
    
  }
  
  
}

function barreras() {

  if(x < 0 ) {
    x = x + 10;
  }
      if(x > width ) {
    x = x - 10;
  }
      if(y < 0 ) {
    y = y + 15;
  }
      if(y > height -55 ) {
    y = y - 30;
  }
}

function juego() {
  
  console.log("vidas: "+vidas+"/10    victorias: " +victorias+ "/5")
  if (vidas <= 0) {
    pantalla = 2
  }
  if (victorias > 5) {
    pantalla = 3
  }
  
//maderas 
  
    if (x > 0 && x < 0+ width && y > 35 && y < 35*3) {
    x++
  } else if (x > 0 && x < 0+ width && y > 32 && y < height/2.3) {
    x--
  } 
  
  
  jugador();
  
  obstaculos();

  
}
  
function obstaculos() {
  
  // AUTOS 1
  for (let i = 0; i < obstaculosX.length ; i++) {
     obstaculosY = (height/2.8)+(85 * (i + 1))
    obstaculosx2= 80
    let obstaculosy2= 40
    
    push()
   image(obstaculo2, obstaculosX[i], obstaculosY, obstaculosx2, obstaculosy2);

    pop()
    
    obstaculosX[i] += 4
    
  if (obstaculosX[i] > width) {
    obstaculosX[i] = random(-100, 0)   
        r = random(210)

  } 
      if (x > obstaculosX[i] && x < obstaculosX[i] + obstaculosx2 && y > obstaculosY && y < obstaculosY + obstaculosy2) {
    
    vidas --
    r = random(210)
    sas= 200
    valoresiniciales()
    iniciojugador()
    
  }
  }
  
 //autos 2 
  for (let i = 0; i < 2 ; i++) {
    let obstaculosatrasY = (height/2.3)+(83 * (i + 1));
    let obstaculosatrasx2 = 80
    let obstaculosatrasy2 = 40
  
  push() 
 image(obstaculo1, obstaculosatrasX[i], obstaculosatrasY, obstaculosatrasx2, obstaculosatrasy2);
   pop();
    obstaculosatrasX[i] -= 3
    
    if (obstaculosatrasX[i] < 0) {
      obstaculosatrasX[i] = random(width, width+150) 
    }
     if (x > obstaculosatrasX[i] && x < obstaculosatrasX[i] + obstaculosatrasx2 && y > obstaculosatrasY && y < obstaculosatrasY + obstaculosatrasy2) {  
    
    vidas --
    valoresiniciales()
    iniciojugador()


  }
  }
  
 
  
  for (let i = 0; i < 2 ; i++) {
    let obstaculosY = (40 * (i + 1));
    obstaculosx2= 180
    let obstaculosy2= 70

  push()
  image(obstaculo2, obstaculosX[i]-100, obstaculosY, obstaculosx2, obstaculosy2)
  pop()
  
    obstaculosX[i] ++
    
  if (obstaculosX[i] > width) {
    obstaculosX[i] = random(-100, 0)   
  } 

    
      if (x > obstaculosX[i]-100 && x < obstaculosX[i]-100 + obstaculosx2 && y > obstaculosY && y < obstaculosY + obstaculosy2) {
    
    vidas --
    valoresiniciales()
    iniciojugador()

  }
  }
  
  for (let i = 0; i < obstaculosX.length ; i++) {
      
      let obstaculosatrasY = 60+(55 * (i + 1));
      let obstaculosatrasx2 = 180
      let obstaculosatrasy2 = 50
  
   push() 
  image(obstaculo1, obstaculosatrasX[i], obstaculosatrasY, obstaculosatrasx2, obstaculosatrasy2)
  pop()  
   
    obstaculosatrasX[i] --
    
    if (obstaculosatrasX[i] < -200 ) {
      obstaculosatrasX[i] = random(width, width+150) 
    }
  
    if(x > obstaculosatrasX[i] && x < obstaculosatrasX[i] + obstaculosatrasx2 && y > obstaculosatrasY && y < obstaculosatrasY + obstaculosatrasy2) {
      
      vidas --
      valoresiniciales()
      iniciojugador()
      
    }  
  }
  
  //GANAR
  
  if (y > 30 && y < 30 + 32 ) {  
    
    iniciojugador()
    valoresiniciales()
    victorias++


  }   
}
function mostrarResultado(pantalla) {
  let mensaje, colorFondo;
  if (pantalla === 2) {
    mensaje = "Perdiste";
    colorFondo = color(255, 150, 150);
  } else if (pantalla === 3) {
    mensaje = "¡¡Ganaste!!";
    colorFondo = color(150, 255, 150);
  }

  fill(colorFondo);
  textSize(50);
  text(mensaje, width / 2, height / 3);

  fill(255);
  textSize(25);
  rect(width / 2.2 + 10, height / 2, botonx2, botony2);
  text("Reiniciar", width / 2, height / 1.8);
}
function tiempo() {
  let s = second();
  if (sas > 0) {
    sas = sas - (s * 3);
  }
  rect(width / 2.5, height - 40, sas * 3, 20);
}

function jugador() {
  circle(x, y, tam);

  if (keyIsPressed && key === 'd') {
    x += 3;
  } else if (keyIsPressed && key === 'a') {
    x -= 3;
  } else if (keyIsPressed && key === 'w') {
    y -= 10;
  } else if (keyIsPressed && key === 's') {
    y += 2;
  }
}

function iniciojugador() {
  sas = 200;
  x = width / 2;
  y = height - 70;
  tam = height / 20;
}

function valoresiniciales() {
  for (let i = 0; i < 3; i++) {
    obstaculosX[i] = random(width);
  }

  for (let i = 0; i < 3; i++) {
    obstaculosatrasX[i] = random(width);
  }
}
