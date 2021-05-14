//Tp1 - Bautista Cassani
//Aca asigné un nombre a la fuente con el cual la llamaría para el resto del trabajo
PFont Testo;

//Cargue la fuente y defini el tamaño del canvas al igual que el color del fondo
void setup (){
  Testo = loadFont ("BodoniMT-22.vlw");
  size (600,400);
  background (175,175,175);
  
  //Configure el tamaño del texto, los nombres de los colores y los puse en la posición correspondiente
  textFont(Testo);
  textSize(27);
  text("Rojo",490,310);
  text("Carmesí",425, 237);
  text("Magenta",410,180);
  text("Purpura ",365,128);
  text("Azul",270,30);
  text("Ultramar",128,133);
  text("Cian",140,180);
 text("Azul",120,215);
 text("Verde",108,232);
 text("Verde",50,305);
 text("Lima",206,333);
 text("Amarillo",257,362);
 text("Naranja",324,332);

//Aca se encuentra el codigo usado para crear las ellipses cada una con un color respetando el circulo cromatico
  fill(0,0,255);
  ellipse (300,80,75,75);
  fill(0,255,0);
  ellipse (160,300,75,75);
  fill(255,0,0);
  ellipse (450,300,75,75);
  fill(0,255,255);
  ellipse (225,180,50,50);
  fill(255,0,255);
  ellipse (380,180,50,50);
    fill(255,255,0);
  ellipse (300,300,50,50);
    fill(255,125,0);
  ellipse (370,300,25,25);
    fill(125,255,0);
  ellipse (230,300,25,25);
    fill(0,125,255);
  ellipse (260,130,25,25);
    fill(125,0,255);
  ellipse (350,130,25,25);
    fill(0,255,125);
  ellipse (190,230,25,25);
    fill(255,0,125);
  ellipse (410,235,25,25);


}



//Algo extra pero use este codigo para poder ver en el canvas donde debia posicionar las ellipses al igual que el texto
void draw(){
  frameRate(12);
  println(mouseX+":"+mouseY);
}
