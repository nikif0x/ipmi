void colorRombos(float r, float g, float b, float r2, float g2, float b2) {
  if (frameCount == 10){
    colorCuadradoNegro = color(r2, g2, b2);
    colorCuadradoBlanco = color(r, g, b);
    colorRomboNegro = color(r2, g2, b2);
    colorRomboBlanco = color(r, g, b);
    frameCount = 2;
  }
}

void keyPressed(){
//return
  if (key == ' ' && frameCount <= 50){
    frameCount = 51;
    colorCuadradoBlanco = 255;
    colorRomboBlanco = 255;
    colorCuadradoNegro = 15;
    colorRomboNegro = 15;
  }
}

boolean esPar(int numero){
  return(numero%2==0);
}
