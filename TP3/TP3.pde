//TP3 comisión 2
//Nicolás Alberti - legajo 120274/5
//Link del video: https://youtu.be/B3rOBzh9QA8

float r,g,b,r2,g2,b2;
color colorRomboNegro;
color colorRomboBlanco;
color colorCuadradoBlanco;
color colorCuadradoNegro;
PImage figura;

void setup(){  
  colorCuadradoNegro = 15;
  colorCuadradoBlanco = 255;
  colorRomboNegro = 15;
  colorRomboBlanco = 255;
  size(800,400);
 
  figura = loadImage("figura.jpg");
}

void draw(){
  r = random(255);
  g = random(255);
  b = random(255);
  r2 = random(255);
  g2 = random(255);
  b2 = random(255);
  background(255);
  image(figura,0,0);
  strokeWeight(0);
  
  for (int ancho=4; ancho<8; ancho++){ 
    for (int largo=0; largo<4; largo++){
      if (esPar(ancho + largo)) { 
      fill(colorCuadradoBlanco); 
    } else {
      fill(colorCuadradoNegro);
    }
    rect (ancho * 100, largo * 100, 100, 100); 
    quads (colorRomboNegro, colorRomboBlanco); 
    colorRombos( r, g, b, r2, g2, b2);  
    }
  }
}
