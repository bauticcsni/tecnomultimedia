//generacion del boton usado para las opciones
void boton(String a,float b, float c){
 pushStyle();
  pushMatrix();
  
  translate(b,height-30);
  noFill();
  stroke(255);
  rect(0,0,c,30);
  fill(255);
  textAlign(LEFT);
  textFont(font);
  textSize(13);
  text(a,0+5,0+22);
  
  popMatrix();
  popStyle();
  
}
void boton(String a,float x, float y, float ancho,float alto){
  pushStyle();
  pushMatrix();
  
  translate(x, y);
  noFill();
  stroke(255);
  rect(0,0,ancho,alto);
  fill(255);
  textAlign(LEFT);
  textFont(font);
  textSize(13);
  text(a,0+5,0+22);
  
  popMatrix();
  popStyle();

}
//Interacciones con el boton
boolean inte(float x, float y, float xup, float yup, float ancho,float alto){
  
  boolean val;
  
  if(x>xup && y>yup && x<xup+ancho && y<yup+alto){
    val = true;
  }
  else {
    val = false;
  }
  return val;
}
