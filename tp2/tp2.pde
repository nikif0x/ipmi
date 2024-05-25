//TP2 comisión 2
//Nicolás Alberti - legajo 120274/5

PFont fuente;
PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
int estado;
String texto0;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;

void setup () {
  fuente= loadFont("zelda.vlw");
  textFont(fuente);
  textAlign (CENTER, CENTER);
  size (640, 480);
  println (frameCount);
  textSize (20);
  
  //carga imagenes
  img0 = loadImage ("img0b.jpg");
  img1 = loadImage ("img1.jpg");
  img2 = loadImage ("img2.jpg");
  img3 = loadImage ("img3.jpg");
  img4 = loadImage ("img4.jpg");
  img5 = loadImage ("img5.jpg");
  img6 = loadImage ("img6.jpg");
  img7 = loadImage ("img7.jpg");
  
  //textos
texto0 = "PRESS [X] TO START";
texto1 = "The Legend of Zelda: Ocarina of times es un \n juego de la saga de Legend of Zelda publicado \n originalmente para la consola Nintendo64 \n en el año 1998.";
texto2 = "La historia del juego nos lleva a jugar como \n el protagonista Link, un niño del bosque \n Kokiri que emprende su aventura gracias \n a la profecía de la princesa Zelda con el fin \n de salvar el destino de Hyrule de las garras \n de Ganondorf.";
texto3 = "A lo largo del juego, debemos enfrentarnos \n a distintos enemigos, acertijos, y misiones \n para poder juntar las tres piedras de los elementos: \n Bosque, Agua y Fuego.";
texto4 = "Con la ocarina entregada por la amiga de Link \n como principal herramienta, iremos aprediendo \n melodías para resolver distintos puzzles y \n avanzar con la historia.";
texto5 = "En el juego obtendremos la ocarina del tiempo, \n elemento escencial para finalizar nuestra \n aventura y dar fin a la profecía.";
texto6 = "Recomiendo mucho este juego, actualmente es \n posible jugar Ocarina of times a través de \n emuladores de N64 en cualquier dispositivo.";
texto7 = "RESTART";

//asignación de estado
estado = 0;
}


void draw () {
  fill (255);
  println(frameCount);
  println (mouseX + "/" + mouseY);
  
  //estados
  
  if(estado==0){
    image(img0, 0, 0, 640, 480);
    text (texto0, 320, 420);
    
  }
  
  if(estado==1){
    image(img1,0,0,640,480);
    text(texto1,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=2;
      
    }
  }
  
  if(estado==2){
    image(img2,0,0,640,480);
    text(texto2,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=3;
    }
  }
  
  if(estado==3){
    image(img3,0,0,640,480);
    text(texto3,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=4;
    }
  }
  
  if(estado==4){
    image(img4,0,0,640,480);
    text(texto4,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=5;
    }
  }
  
  if(estado==5){
    image(img5,0,0,640,480);
    text(texto5,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=6;
    }
  }
  
  if(estado==6){
    image(img6,0,0,640,480);
    text(texto6,320,0-frameCount/-2);
    if (frameCount/60>=8){
      frameCount=0;
      estado=7;
    }
  }
  
  if(estado==7){
    textSize (35);
    image(img7,0,0,640,480);
    fill (255,0,0);
    text(texto7,320,240);
    if (frameCount/60>=8){
      frameCount=0;
      
    }
  }
}

void mousePressed () {
  if(estado == 7 && mouseX>=255 && mouseX<=382 && mouseY>=225 && mouseY<=255){
    frameCount = 0;
    estado = 0;
  }
}

void keyPressed () {
  if(estado == 0 && key == 'x'){
    frameCount = 1;
    estado = 1;
  }
}
