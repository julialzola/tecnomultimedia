//Juliana Alzola 93553/1
//Comisión 1
//https://youtu.be/3Xr4HRHdvYo

String estado;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla12;
PImage pantalla7;
PImage pantalla8;
PImage pantalla9;
PImage pantalla5;
PImage pantalla4;
color colorillo = color(0, 255, 0);
color colorcillo = color(0, 255, 0);
color colorcito = color(0,255,0);
color colorete = color(0,255,0);
void setup() {
  size(600, 600);
pantalla1= loadImage ("pantalla1.png");
pantalla2= loadImage ("pantalla2.png");
pantalla3= loadImage ("pantalla3.png");
pantalla12=loadImage ("pantalla12.png");
pantalla7 = loadImage ("pantalla7.png");
pantalla8 = loadImage("pantalla8.png");
pantalla9 = loadImage ("pantalla9.png");
pantalla4= loadImage ("pantalla4.png");
pantalla5 = loadImage ("pantalla5.png");
  estado = "inicio";
  textSize(25);
  }
  void draw(){
    if (estado.equals("inicio")) { 
      fill(255);
      image(pantalla1,0,0,600,600);
    textAlign(CENTER);
    textSize(40);
    text("LA MAÑANA VERDE\n Ray Bradbury", width/2, 200);
    fill(colorillo);
    circle(150,500, 80);
    textSize(25);
    fill(0);
    text("Iniciar", 150, 505);
     fill(colorcito);
    
    fill(colorcillo);
    circle(450,500, 80);
     fill(0);
    text("creditos", 450, 505);
    if( dist(mouseX, mouseY, 150, 500) <=40){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 150, 500) >=40){
    colorillo = color(0, 255, 0);
      if( dist(mouseX, mouseY, 450, 500) <=40){
       colorcillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 450, 500) >=40){
    colorcillo = color(0, 255, 0);
    
     
    }
    }
    
    
 } else if (estado.equals("primera")) { 
   image(pantalla1,0,0,600,600);
   
 fill(colorillo);

    circle(100,500, 120);
    textAlign(CENTER);
    fill(255);
     textSize(30);
      
    text("Benjamín Driscoll llega a Marte con la misión \n de hacer que el planeta sea verde y habitable \n ¿Qué hace primero?", 300, 250);
 textSize(15);
  fill(0);
    text("Comenzar a \n plantar árboles \n de inmediato", 100, 480);
    fill(colorcito);
    circle(300,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(12);
  fill(0);
    text("Investigar el terreno \n y buscar posibles \n soluciones antes de \n comenzar a plantar. ", 300, 475);
    
    fill(colorcillo);
    circle(500,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(15);
  fill(0);
    text("Decidir regresar a \n la Tierra sin lograr \n el objetivo.", 500, 485);
    
    if( dist(mouseX, mouseY, 100, 500) <=60){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 100, 500) >=60){
    colorillo = color(0, 255, 0);
      if( dist(mouseX, mouseY, 500, 500) <=60){
       colorcillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 500, 500) >=60){
    colorcillo = color(0, 255, 0);
    }
    if( dist(mouseX, mouseY, 300, 500) <=60){
       colorcito = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 300, 500) >=60){
    colorcito = color(0, 255, 0);
    }
    }
 
  
  } else if (estado.equals("segunda")) { 
    image(pantalla2,0,0,600,600);
    textAlign(CENTER);
    textSize(28);
    fill(255);
    text("Benjamín se dedica a la tarea de plantar árboles \n y semillas en la tierra árida de Marte. \n ¿Cómo elige abordar el riego?", width/2, 100);

   
 fill(colorillo);

    circle(150,500, 120);
    textAlign(CENTER);
   
 textSize(15);
  fill(0);
    text("Regar manualmente  \n cada  árbol \n y semilla", 150, 485);
    fill(colorcillo);
    circle(450,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(14);
  fill(0);
    text("Utilizar un \n sistema  de \n riego automático", 450, 475);
    
 
 
    
      if( dist(mouseX, mouseY, 150, 500) <=60){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 150, 500) >=60){
    colorillo= color(0, 255, 0);
      if( dist(mouseX, mouseY, 450, 500) <=60){
       colorcillo= color(0,200, 0);
    }else if(dist(mouseX, mouseY, 450, 500) >=60){
    colorcillo = color(0, 255, 0);
     }
     
     }
    
  }else if (estado.equals("tercera")) { 
   image(pantalla3,0,0,600,600);
    textAlign(CENTER);
     textSize(20);
        text("Benjamin realiza investigaciones exhaustivas sobre el \n terreno y las condiciones en Marte antes de tomar medidas. \n ¿Qué área decide explorar primero?", 300, 80);
    //text("Benjamín está trabajando arduamente para hacer crecer \n árboles y convertir el planeta en un lugar verde y frondoso", 50, 100);
     fill(colorillo);

    circle(150,500, 120);
    textAlign(CENTER);
   
 textSize(16);
  fill(0);
    text("Explorar las \n posibles fuentes \n de agua \n en Marte", 150, 470);
    fill(colorcillo);
    circle(450,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(13);
  fill(0);
    text("Investigar los \n nutrientes del \n suelo y las \n condiciones de \n crecimiento.", 450, 460);
    
      if( dist(mouseX, mouseY, 150, 500) <=60){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 150, 500) >=60){
    colorillo= color(0, 255, 0);
      if( dist(mouseX, mouseY, 450, 500) <=60){
       colorcillo= color(0,200, 0);
    }else if(dist(mouseX, mouseY, 450, 500) >=60){
    colorcillo = color(0, 255, 0);
     }
     
     }
    
    
  }  else if (estado.equals("creditos")) { 
   image(pantalla12,0,0,600,600);
    textAlign(CORNER);
      textSize(25);
      fill(255);
    text("Juliana Alzola \n  93553/1 \n Comisión 1 \n Cuento de Ray Bradbury", 50, 80);
    fill(colorcito);
    circle(300,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(17);
  fill(0);
    text("VOLVER AL \n MENU ", 300, 490);
       if( dist(mouseX, mouseY, 300, 500) <=60){
       colorcito = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 300, 500) >=60){
    colorcito = color(0, 255, 0);
    }
    
  }else if (estado.equals("malfin")) { 
   image(pantalla7,0,0,600,600);
    textAlign(CENTER);
    textSize(18);
    text("Aunque siente la decepción de no haber logrado su objetivo, Benjamín no \n se rinde   y regresa a la Tierra con la esperanza de encontrar nuevos enfoques y  \n oportunidades para la colonización de otros planetas. Benjamín   seguirá \n buscando maneras de expandir la presencia humana en el espacio y  \n contribuir al desarrollo de nuevos entornos habitables", 300, 70);
fill(colorcito);
    circle(300,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(17);
  fill(0);
    text("VOLVER AL \n MENU ", 300, 490);
        if( dist(mouseX, mouseY, 300, 500) <=60){
       colorcito = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 300, 500) >=60){
    colorcito = color(0, 255, 0);
    }
}else if (estado.equals("ocho")) { 
   image(pantalla8,0,0,600,600);
    textAlign(CENTER);
    textSize(22);
    fill(255);
    text("Él dedica tiempo y esfuerzo a regar manualmente cada  árbol \n y semilla, asegurándose de que reciban la atención necesaria. \n ¿Cómo enfrenta los desafíos de la falta de agua?", 300, 100);
 fill(colorillo);

    circle(150,500, 120);
    textAlign(CENTER);
   
 textSize(12);
  fill(0);
    text("Desarrollar técnicas \n de recolección y \n conservación de agua", 150, 485);
    fill(colorcillo);
    circle(450,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(16);
  fill(0);
    text("Importar agua \n desde la \n Tierra", 450, 480);
    
    if( dist(mouseX, mouseY, 150, 500) <=60){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 150, 500) >=60){
    colorillo= color(0, 255, 0);
      if( dist(mouseX, mouseY, 450, 500) <=60){
       colorcillo= color(0,200, 0);
    }else if(dist(mouseX, mouseY, 450, 500) >=60){
    colorcillo = color(0, 255, 0);
     }
     
     }
 
 }else if (estado.equals("nueve")) { 
   image(pantalla9,0,0,600,600);
    textAlign(CENTER);
    textSize(23);
   text(" Instala un sistema de riego automático para asegurarse de \n  que todas las plantas reciban la cantidad adecuada de agua. \n  ¿Cómo decide nutrir las plantas?", 300, 70);
 fill(colorillo);

    circle(150,500, 120);
    textAlign(CENTER);
   
 textSize(17);
  fill(0);
    text(" Utilizar \n fertilizantes \n químicos", 150, 480);
    fill(colorcillo);
    circle(450,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(16);
  fill(0);
    text("Investigar \n métodos de \n fertilización \n orgánica", 450, 470);
     if( dist(mouseX, mouseY, 150, 500) <=60){
       colorillo = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 150, 500) >=60){
    colorillo= color(0, 255, 0);
      if( dist(mouseX, mouseY, 450, 500) <=60){
       colorcillo= color(0,200, 0);
    }else if(dist(mouseX, mouseY, 450, 500) >=60){
    colorcillo = color(0, 255, 0);
     }
     
     }
 
}else if (estado.equals("cinco")) { 
   image(pantalla5,0,0,600,600);
    textAlign(CENTER);
    textSize(55);
    fill(255);
   text("Fin: \n Marte se convierte en \n un valle verde y frondoso", 300, 90);
    fill(colorcito);
    circle(300,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(17);
  fill(0);
    text("VOLVER AL \n MENU ", 300, 490);
       if( dist(mouseX, mouseY, 300, 500) <=60){
       colorcito = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 300, 500) >=60){
    colorcito = color(0, 255, 0);
    }
    
  }else if (estado.equals("cuatro")) { 
   image(pantalla4,0,0,600,600);
    textAlign(CENTER);
    textSize(60);
    fill(255);
    text("MISION FALLIDA", 300, 300);
     fill(colorcito);
    circle(300,500, 120);
    textAlign(CENTER);
    fill(255);
    
 textSize(17);
  fill(0);
    text("VOLVER AL \n MENU ", 300, 490);
    if( dist(mouseX, mouseY, 300, 500) <=60){
       colorcito = color(0,200, 0);
    }else if(dist(mouseX, mouseY, 300, 500) >=60){
    colorcito = color(0, 255, 0);
    }
}
  }
 
  void mousePressed(){
    
  
  
  if( estado == "inicio" && dist(mouseX, mouseY, 150,500)<=40){
   estado= "primera";
  }else if( estado == "inicio" && dist(mouseX, mouseY, 450,500)<=40){
   estado= "creditos";
}else if(estado == "primera" && dist(mouseX, mouseY, 100,500)<=60){
    estado = "segunda";
    }else if(estado == "primera" && dist(mouseX, mouseY, 300,500)<=60){
    estado = "tercera";
     }else if(estado == "primera" && dist(mouseX, mouseY, 500,500)<=60){
    estado = "malfin";
  }else if( estado == "segunda" && dist(mouseX, mouseY, 150,500)<=60){
   estado= "ocho";
    }else if( estado == "segunda" && dist(mouseX, mouseY, 450,500)<=40){
   estado= "nueve";
   }else if( estado == "ocho" && dist(mouseX, mouseY, 150,500)<=60){
   estado= "cinco";
    }else if( estado == "ocho" && dist(mouseX, mouseY, 450,500)<=40){
   estado= "cuatro";
    }else if( estado == "nueve" && dist(mouseX, mouseY, 150,500)<=60){
   estado= "cuatro";
    }else if( estado == "nueve" && dist(mouseX, mouseY, 450,500)<=40){
   estado= "cinco";
   }else if(estado == "cuatro" && dist(mouseX, mouseY, 300,500)<=60){
    estado = "inicio";
       }else if(estado == "cinco" && dist(mouseX, mouseY, 300,500)<=60){
    estado = "inicio";
     }else if( estado == "tercera" && dist(mouseX, mouseY, 150,500)<=60){
   estado= "cinco";
    }else if( estado == "tercera" && dist(mouseX, mouseY, 450,500)<=40){
   estado= "cuatro";
    }else if(estado == "creditos" && dist(mouseX, mouseY, 300,500)<=60){
    estado = "inicio";
     }else if(estado == "malfin" && dist(mouseX, mouseY, 300,500)<=60){
    estado = "inicio";
    //if( mouseX < width/2 ){ 
    //  estado = "tercera";
    //}
  }
  }
