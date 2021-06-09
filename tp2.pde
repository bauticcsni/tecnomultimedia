//Bautista Cassani
//Legajo : 85071/0
//TP2: Secuencia de creditos (Final Fantasy VII (1997))

//Aca cargue la fuente y la imagen usadas en la secuencia
PFont font;
PImage logo;

//el estado en el que se encuentra el draw de base para luego con mousePressed poder cambiar a 1
int estado = 0; 

//Las variables que son usadas para poder generar la animacion en el draw, Y se usa para mover la imagen, A para poder restarle a ambas variables y B para las lineas de texto
float y = 50.0;
float a = 1.0;
float b = 1350;


void setup() {
  //Canvas + carga del archivo de fuente y imagen
  size (600,400);
  font = loadFont ("ArialNarrow-Bold-48.vlw");
  textFont(font);
  logo = loadImage ("ff7c.png");
 
}

void draw(){
 
  //La imagen inicial, el logo estatico mas el texto indicando como comenzar
  if (estado==0){
   textAlign(CENTER);
    background (0);
    image(logo,100,50,400,200);
    text("Haz click\npara comenzar", 275,300);
  //Todo lo que sucede al hacer click
  }else if ( estado == 1){
    textAlign(CENTER);
  background (0);
  image(logo,100,y,400,200);
  //Los roles de todos los que aparecen nombrados en esta secuencia, al igual que en la obra original están en rojo
  fill(255,0,0);
  text ("DIRECTOR", 300, b-900);
  text("PRODUCTOR", 300,b-760);
  text("PROGRAMADOR",300,b-620);
  text("ARTISTA",300,b-480);
  text("ESCRITORES",300,b-340);
  text("COMPOSITOR",300,b-150);
  text("DISEÑO DE PERSONAJES",300,b-10);
  text("DIRECTOR ANIMACIÓN",300,b+130);
  text("DISTRIBUIDORES",300,b+270);
  text("PERSONAJES",300,b+460);
  
  
  //Los nombres de las personas pertenecientes a cada rol ademas de las dos empresas distribuidoras del juego en su lanzamiento, los personajes jugables y el villano principal de la entrega
  fill(255);
  text ("Yoshinori Kitase", 300, b-850);
  text ("Hironobu Sakaguchi", 300, b-710);
  text ("Ken Narita", 300, b-570);
  text ("Yusuke Naora", 300, b-430);
  text ("Kazushige Nojima", 300, b-290);
  text ("Yoshinori Kitase", 300, b-240);
  text ("Nobuo Uematsu", 300, b-100);
  text ("Tetsuya Nomura", 300, b+40);
  text ("Hidetoshi Omori", 300, b+180);
  text ("Squaresoft", 300, b+320);
  text ("Sony Interactive Entertainment", 300, b+370);
  text ("Cloud Strife", 300, b+510);
  text ("Barret Wallace", 300, b+560);
  text ("Tifa Lockhart", 300, b+610);
  text ("Aerith Gainsborough", 300, b+660);
 text ("Red XIII", 300, b+710);
 text ("Caith Sith", 300, b+760);
 text ("Cid Highwind", 300, b+810);
  text ("Yuffie Kisaragi", 300, b+860);
  text ("Vincent Valentine", 300, b+910);
  text ("Sephirot", 300, b+960);
  
  //El codigo para que las variables comiencen a restar pixeles, generando asi la animacion de estar subiendo en la pantalla
  y = y - a;
  b = b - a;
  }
}

//El void de mousePressed, con el cual el estado cambia a 1 y comienza la animación
void mousePressed(){
 if (estado==0){
   estado = 1;
 }
}
  
 
