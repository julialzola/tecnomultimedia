class PantallaInicio {
  dibujar() {
    background(0); // Color de fondo negro


     textAlign(CENTER);
    textSize(30);
    fill(255);
    text('¡Ayuda a Benjamin a hacer de Marte un lugar habitable!', width / 2, height / 4);
    textSize(20);
    text('Evita los planetas y llega a Marte para ganar.\n Utiliza las teclas A,W,S y D para mover a Benjamin.', width / 2, height / 3);
      textSize(15);
    text('Juliana Alzola, Comisión 1, 93553/1', width / 2, height / 2.2);
     // Botón de inicio
    fill(0, 255, 0); // Color verde para el botón
    rect(width / 2 - 50, height / 2, 100, 40);
    textSize(18);
    fill(0);
    text('Iniciar Juego', width / 2, height / 2 + 25);
  }

  clicEnBoton() {
    return mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 && mouseY < height / 2 + 40;
  }
}
