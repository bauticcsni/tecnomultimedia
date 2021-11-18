//Sorribes, Delfina: 88287/8
//Cassani Bautista: 85071/0
//TP5 2021
//https://youtu.be/ruizMgY-yiU

//declaramos
Juego game;
void setup() {
  size(800, 600);
  game = new Juego();
}

void draw() {
  game.dibujar();
}

void keyPressed() {
  game.teclado();
}
