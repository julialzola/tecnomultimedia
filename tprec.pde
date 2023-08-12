//Juliana Alzola
//93553/1
//Comisión 1 TP3 RECUPERATORIO
//https://youtu.be/jMGIe2Shj0M
int cant = 14;
PImage [] estadosI = new PImage[cant];
PImage [] opcionesI = new PImage[3];
String [] textos = {"La mañana verde", "Benjamín Driscoll llega a marte con la misión de que el planeta sea verde y habitable plantando arboles", "Benjamín trabaja incansablemente cada día, cavando hoyos, sembrando semillas y cuidando de sus plantaciones, su objetivo es proporcionar oxígeno a la atmosfera. Benjamin enfrenta desafios y dificultades. Después de un mes de trabajo arduo, Benjamin se siente frustrado por la aparente lentitud del crecimiento de los arboles","Benjamin continua trabajando arduamente", "benjamin sueña con ver un Marte lleno de arboles, verdos y oxigeno fresco", "Benjamin se siente agotado por la dificultad de adaptarse a las condiciones de Marte, comienza a perder la esperanza, se siente abrumado y empieza a creer que es imposible lograr su objetivo",
"Benjamin continua luchando por su sueño", "comienza a ver avances en la vegetación", "Los arboles que Benjamin ha plantado comienzan a crecer", "El planeta comieza a mostrar algunos signos de vida", "Benjamin esta motivado por su entusiasmo y deseo de acelerar el proceso de transformación de Marte", " Despues de esfuerzo constante, la lluvia finalmente llega a Marte.Los arboles crecen asombrosamente. La comunidad local se reune para admirar el cambio asombroso y el trabajo de benjamin. El paisaje se llena de arboles de hojas metalicas y colores brillantes", "Fin", "Creditos:"} ;
String [] opciones = { "los arboles se vuelven debiles y enfermizos por la sobreexposición a los químicos. Los arboles no pueden mantener su crecimiento saludable y Marte no se convierte en el oasis verde que Benjamin esperaba. La misión falla", "Marte sigue siendo un lugar inhospito y desolado, Benjamín se lamenta no haber perseverado y explorado diferentes enfoques para cumplir sus sueños", "Benjamin no realizó una investigación exhaustiva sobre como afectarían los arboles de la tierra al ecosistema marciano. Se desencadena un desequuilibrio en Marte. La mision fracasa."};
String [] creditos = { "Juliana Alzola", "93553/1", "Imagenes de inteligencia artificial", "Autor: Ray Bradbury"};
int pantalla = 0;
int opcionesB = 0;

void setup(){
  size (600, 600);
    for (int i=0; i<cant; i++) {
    estadosI[i] = loadImage("imagen"+i+".png");
    }
    
       for (int i=0; i<3; i++) {
    opcionesI[i] = loadImage("imagen"+i+"(B).png");
    }
textSize(25);
}
  
void draw(){
   if(pantalla==0){
    image( estadosI [0], 0, 0, 600, 600);
    Botones(500, 550, 150, 60, "INICIO", 150, 60);
    Botones(125, 550, 200, 60, "CREDITOS", 200, 60);
   }
  
   if(pantalla==1 ){
    image( estadosI [1], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 550, 175, 50);
    fill(0);
    text (textos [1], 300, 275, 500, 400);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
  
   if(pantalla==2){
    image( estadosI [2], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 170, 550, 200, 50);
    fill(0);
     textSize(20);
    text (textos [2], 300, 275 ,500, 400);
     textSize(13);
    Botones(500, 500, 160, 60, "aplicar fertilizantes quimicos para impulsar el crecimiento", 160, 60);
   textSize(25);
    Botones(100, 500, 160, 60, "esperar", 160, 60);
   }
  
   if( pantalla == 3){
    image(estadosI [3], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 460, 75, 50);
    fill(0);
    text (textos [3], 300, 325 ,500, 400);
   
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
 
     else if( opcionesB == 3){
      image( opcionesI [0], 0, 0, 600, 600);
      fill(255, 255, 255, 100);
      rect( 300, 190, 510, 200, 50);
      fill(0);
      text (opciones [0], 300, 300, 500, 400);
      Botones (300, 550, 150, 60, "VOLVER", 150, 60);
     }
 
   if(pantalla==4){
    image( estadosI [4], 0, 0, 600, 600);
    //fill(255, 255, 255, 100);
    //rect( 300, 130, 500, 250, 50);
    fill(0);
    text (textos [4], 300, 225, 500, 400);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
  
   if(pantalla==5){
    image( estadosI [5], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 126, 500, 230, 50);
    fill(0);
        textSize(25);
    text (textos [5], 300, 225, 500, 400);
     textSize(23);
    Botones (100, 300, 160, 60, "no rendirse", 160, 60);
     textSize(20);
    Botones(500, 300, 160, 60, "abandonar la mision", 160, 60);
   }

   if(pantalla==6){
    image( estadosI [6], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 70, 500, 120, 50);
    fill(0);
      textSize(25);
    text (textos [6], 290, 250, 500, 400);

    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
 
      else if( opcionesB == 6){
       image( opcionesI [1], 0, 0, 600, 600);
       fill(255, 255, 255, 100);
       rect( 300, 150, 500, 150, 50);
       fill(0);
       text (opciones [1], 300, 310, 500, 400);
       Botones (300, 550, 150, 60, "VOLVER", 150, 60);
      }
 
   if(pantalla==7){
    image( estadosI [7], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 100, 500, 100, 50);
    fill(0);
      textSize(25);
    text (textos [7], 300, 270, 500, 400);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
 
   if(pantalla==8){
    image( estadosI [8], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 100, 500, 100, 50);
    fill(0);
      textSize(25);
    text (textos [8], 300, 270, 500, 400);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
 
   if(pantalla==9){
    image( estadosI [9], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 100, 500, 100, 50);
    fill(0);
      textSize(25);
    text (textos [9], 300, 270, 500, 400);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
 
   if(pantalla==10){
    image( estadosI [10], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 100, 500, 150, 50);
    fill(0);
        textSize(25);
    text (textos [10], 300, 250, 500, 400);
     textSize(12);
    Botones (500, 300, 160, 60, "continuar con el plan para ver si sigue funcionando", 160, 60);
    Botones(100, 300, 160, 60, "traer una variedad de especies de árboles de la tierra", 160, 60);
   }
   
   if(pantalla==11){
    image( estadosI [11], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 100, 500, 150, 50);
    fill(0);
     textSize(18);
    text (textos [11], 300, 238, 500, 400);
     textSize(25);
    Botones(100, 300, 160, 60, "VOLVER", 160, 60);
    Botones (500, 300, 160, 60, "CONTINUAR", 160, 60);
   }
    
      else if(opcionesB== 11){
       image( opcionesI [2], 0, 0, 600, 600);
       fill(255, 255, 255, 100);
       rect( 300, 100, 500, 150, 50);
       fill(0);
        textSize(20);
       text (opciones [2], 300, 250, 500, 400);
       textSize(25);
       Botones (300, 550, 150, 60, "VOLVER", 150, 60);   
      }
 
   if( pantalla == 12){
    image( estadosI [12], 0, 0, 600, 600);
   
   }

   if( pantalla == 13){
    image( estadosI [13], 0, 0, 600, 600);
    fill(255);
    text (textos [13], 150, 100);
       for (int i=0; i<4; i++) {
        text(creditos[i], 300, 200+i*70);
       }
    Botones(300, 550, 150, 60, "INICIO", 150, 60);
   }
}
