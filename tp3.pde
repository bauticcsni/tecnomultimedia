//Bautista Cassani
//Legajo: 85071/0
//TP3; Ilusión Óptica: Patrón de Moiré adaptado
//https://youtu.be/-1CL9SS0ecs

//Carga del estado en el cual comienza el proyecto
int estado = 0;
//Carga de la fuente
PFont font;
//Carga de las variables que serán usadas
float a = 20;
float b;
float c=5;


void setup(){
//Tamaño del canvas, carga de la fuente y elección del color del fondo original
size(600,400);
font = loadFont ("Bahnschrift-48.vlw");
textFont (font);
background (0);
}


void draw(){
//Carga de los maps, con estos se generan los movimientos interactivos con el mouse
  b=map(mouseX,0,width,10,width);
 c=map(mouseY,0,height, -90,90);
  a=map(mouseY,0,height,10,height);
//Definición del grosor de las lineas
  strokeWeight(a/2);
  
//Estado inicial, generacion de la pantalla de inicio
  if (estado==0){
   textAlign(CENTER);
   background (0);
   fill (255);
   textSize(20);
   text ("Instrucciones\nClick izquierdo para comenzar la obra\nClick derecho o izquierdo para cambiar los colores\nPresione cualquier tecla para volver a esta pantalla",300,200);
}

//Generacion del primer estado al que se cambia
else if ( estado == 1){ 
  background (255);
  stroke(0);
//Generación del patron de lineas
   for (int x=0;x<=width;x+=a){
   line(x, 0, x, height);
  }
   for (int x=0; x<=width; x+=a){
   line(x+b,c,x,height);
  }
}

//Generación del segundo estado al que se puede acceder, es el que alterna los colores del fondo y las lineas
else if ( estado ==2){
  background (0);
  stroke (255);
      for (int x=0;x<=width;x+=a){
   line(x, 0, x, height);
  }
   for (int x=0; x<=width; x+=a){
   line(x+b,c,x,height);
  }
}

}

//Void de las interacciones con el mouse generando los cambios de estado
void mousePressed(){
 if (mouseButton== LEFT){
   estado = 1;
 }
if (mouseButton==RIGHT){
  estado = 2;
}
}

//Void que genera la interacción con las teclas, volviendo todo a la pantalla original
void keyPressed(){
 if (estado==1){
   estado = 0;
 }
 if (estado==2){
   estado = 0;
 }
}
