// Juliana Alzola
// tp1, Comisión 1
int segundos;
int posX;
int opacity = 0;
int pos;
int tama;
int posY;
PFont fuente;
PImage castillo;
PImage paisaje;
PImage lago;
PImage felicitas;
PImage turismo;
void setup() {
  size(640, 480);
fuente = loadFont("candaraitalic.vlw");
castillo = loadImage ("CASTILLO.jpg");
paisaje = loadImage ("PAISAJE.jpg");
lago = loadImage ("LAGO.jpg");
turismo = loadImage ("TURISMO.jpg");
felicitas = loadImage ("FELICITAS.jpeg");
  segundos = 0;
  pos= 480;
  tama = 0;
  textAlign(CENTER);
  textSize(40);
textFont(fuente);
  posX = 690;
  posY = 1;
}
void draw() {
  background(0);

     
 
  if (frameCount%60==0) {
   segundos++;
   }
   
   
  if (segundos<10) {
image(castillo,0,0,640,480);
    textSize(36);
   text("La estancia La Raquel, conocida como el \n ¨castillo de Felicitas¨ está ubicada al \n costado de la Ruta 2, en el kilómetro 168, \n a la altura de la localidad de Castelli. ", width/2, pos);
 if (pos>110)
  pos--;
  
  
  } else if (segundos >=10 && segundos <=20) {
    image(paisaje,0,0,640,480);
     textSize(40);
      textAlign(CENTER, CENTER);
 text("el castillo posee un estilo \n francés, con paredes color \n salmón, tejas y la gran torre. ", posX, 350);
 if (posX>width/2)
 posX--;
 
 
  } else if (segundos >20 && segundos <=30) {
     image(lago,0,0,640,480);
    textSize(34);
fill(255,255,255,opacity++);
   text("La estancia fue testigo de la vida \n ampulosa de la burguesía porteña de \n mediados del siglo XIX, además de haber \n sido uno de los escenarios de la historia \n de Felicitas Guerrero; una historia breve pero \n intensa, digna de una novela romántica.", width/2, 265);
  }


 else if (segundos >30 && segundos <=40) {
     textSize(tama++);
     image(felicitas,0,0,640,480);
      fill(255);
   text("Felicitas enfrentó una vida marcada por tragedias y conflictos. \n Después de enviudar, Felicitas heredó una gran fortuna \n  y se convirtió en una de las mujeres más ricas de Buenos Aires. \n  Sin embargo, se involucró en un escandaloso triángulo amoroso. \n Finalmente, en 1872, Felicitas fue asesinada a los 48 años por \n un pretendiente que estaba obsesionado con ella y se negaba \n a aceptar su rechazo.", width/2, 270);
    if (tama>23)
 tama--;
  }
    
    else if (segundos >40) {
      textSize(23);
   textAlign(CENTER, CENTER);
     image(turismo, 0, 0, 640,480);
      fill(255);
   text("La muerte de Felicitas Guerrero dio comienzo a su leyenda,  que nos \n cuenta de su belleza infinita, de su historia llena de amor \n y tragedia, e incluso hasta de su  fantasma. Dàndole al castillo \n de la ruta 2 un encanto  e importancia histórico y mìstico muy \ninteresante para cualquiera. Hoy en dìa se pueden hacer \n visitas programadas abiertas al pùblico", 320, posY++);
if (posY>320)
 posY--;
  
}

  
fill(255, 0, 0);
   textSize(30);
  text(segundos, 40, 20);
  println(segundos);
   if (mouseX>550 && mouseX <630 && mouseY>410 && mouseY<470 ) {
     fill(0, 200, 255);
  } else {
     fill(0, 0, 255);
   }
    rect(550, 410, 80, 60);
    fill(255);
     textSize(17);
    textAlign(CENTER, CENTER);
 text("reiniciar", 590, 440);
}
void mousePressed() {
   if (mouseX>550 && mouseX <630 && mouseY>410 && mouseY<470 ) {
  segundos = 0;
  pos = 480;
   }
}
