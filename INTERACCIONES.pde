void mousePressed(){
  if(pantalla==0 && dentrodelBoton(500, 550, 150, 60)){
    pantalla=1;
 } 
 
 if(pantalla == 0 && dentrodelBoton(125, 550, 200, 60)){
   pantalla = 13;
 }
 
 if(pantalla==1 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 2;
 }
 
  else if(pantalla==2 && dentrodelBoton(100, 500, 160, 60)){
   pantalla = 3;
 }
 
  else if (pantalla == 3 && dentrodelBoton(100, 300, 160, 60)){
   pantalla = 2;
 }
  
  else if(pantalla==2 && dentrodelBoton(500, 500, 160, 60)){
   opcionesB = 3;
 }
 
  else if(opcionesB ==3 && dentrodelBoton(300, 550, 150, 60)){
   opcionesB = 0;    
 }
  
  else if (pantalla ==3 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 4;
 }
 
  else if (pantalla ==4 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 5;
  }
  
  else if(pantalla==5 && dentrodelBoton(100, 300, 160, 60)){
   pantalla = 6;
  }
  

  
  else if( pantalla ==5 && dentrodelBoton(500, 300, 160, 60)){
   opcionesB= 6;
  }
  
  else if(opcionesB ==6 && dentrodelBoton(300, 550, 150, 60)){
   opcionesB = 0; 
  }
  
  else if(pantalla==6 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 7;
  }
 
  else if(pantalla==7 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 8;
  }

  else if(pantalla==8 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 9;
  }

  else if(pantalla==9 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 10;
  }
  
  else if(pantalla==10 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 11;
  }
     
  else if (pantalla == 11 && dentrodelBoton(100, 300, 160, 60)){
   pantalla = 10;
  }
  
  else if( pantalla ==10 && dentrodelBoton(100, 300, 160, 60)){
   opcionesB= 11;
  }
  
  else if(opcionesB ==11 && dentrodelBoton(300, 550, 150, 60)){
   opcionesB = 0;    
  }
    
  else if(pantalla==11 && dentrodelBoton(500, 300, 160, 60)){
   pantalla = 12;
  }
  
  else if(pantalla==12 && dentrodelBoton(300, 550, 150, 60)){
   pantalla = 13;
  }
  
  else if(pantalla==13 && dentrodelBoton(300, 550, 150, 60)){
   pantalla = 0;
  }
}
