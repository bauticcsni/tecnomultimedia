//Bautista Cassani
//Legajo: 85071/0
//TP4: Aventura Grafica: Skywatching
//https://youtu.be/BqR6A4CDHLM - video del trabajo
//https://www.youtube.com/c/LOCAL58TV - Canal de Local58tv

//declaracion de las variables y archivos de la carpeta data
PFont font;
PImage [] bgs = new PImage [17];
String[] text = new String [30];
int estado = 0;




// Setup con las cargas de imagenes y los strings de textos
void setup (){
 size(600,400); 
  for( int i = 0 ; i < bgs.length ; i++ ){
    bgs[i] = loadImage( "skywatching" + i + ".jpg" );
  }
 font = loadFont ("Papyrus-Regular-48.vlw");
 textFont(font);

  text [0] = "Desde tu cama observas la pantalla de tu televisor\n y ves un extraño mensaje";
    text [1] = "Un aviso el cual dictaba que era peligroso salir, \n aunque sorprendentemente a los pocos segundos se retracta";
    text [2] = "Oyes gritos y ruidos raros afuera, ¿que decides hacer?";
    text [3] = "Apagas y dejas que el sueño te gane,\n sientes una mano sobre tu hombro \n y recuerdas que vives solo."; //final 1
    text [4] = "Sales de tu hogar y a lo lejos en el pasillo\n puedes ver una figura roja,\n ella tambien te ha visto. ¿Que haces? ";
    text [5] = "Al darte vuelta puedes oirle acercarse, por suerte las escaleras\n de emergencia estaban cerca.";
    text [6] = "Ya fuera del edificio y de su alcance puedes ver dos calles\n ¿Cual tomas?";
    text [7] = "Una calle abandonada, completamente desolada,\n lo unico que ves es un auto con las puertas abiertas y\n la llave puesta";
    text [8] = "Tras conducir por calles igual de vacias llegas a un colegio\n puedes ver luces encendidas desde las ventanas";
    text [9] = "Al seguir por la carretera terminas varado en las afueras,\n lo ultimo que ven las luces del auto es a tu cazador."; //final 2
    text [10] = "Dentro de la escuela escuchas ruidos \ny el pasillo se divide en dos";
    text [11] = "Al girar notas las luces apagandose y como algo respira en tu nuca,\n caiste en su trampa."; //final 3
    text [12] = "Ingresas en el auditorio, parece estar vacio pero enseguida \n personas se asoman, ya no estas solo."; //final 4
    text [13] = "Una calle poco familiar, dudas siquiera haberla visto antes, ¿Sigues?";
    text [14] = "Otra calle aún más desconocida,\n ¿estas seguro de lo que haces?";
    text [15] = "Lo suponia, a veces no hace mal salir a recorrer el barrio."; 
    text [16] = "Te has perdido.";
    text [17] = "Bautista Cassani \n 85071/0\n Inspirado en los videos del canal ´Local 58 tv' \ny su creador Kris Straub ";
    text [18] = "Has muerto";
    text [19] = "SKYWATCHING";
    
}



void draw (){
  textAlign (CENTER);
 //intro
  if (estado == 0) {
    image( bgs [0], 0, 0, width, height );
     textSize (21);
     text (text [19], 300, 40);
    boton("Comenzar", 150, 300, 90, 32);
    boton("Créditos", 350, 300, 90, 32);
  } 
  
  
  //pantallas intro
  else if (estado == 1)  {
     image( bgs [8], 0, 0, width, height );
     fill (255);
     textSize (21);
     text (text [0], 300, 325);
     boton("Continuar", 510, 350, 80, 32);  
  }
  
  else if (estado == 2) {
    image( bgs [1], 0, 0, width, height );
    fill (255);
    textSize (19);
    text (text [1], 310, 290);
     boton("Continuar", 510, 350, 80, 32); 
  }
  
  
  //pregunta cama
  else if (estado == 3) {
    image( bgs [1], 0, 0, width, height );
    fill (255);
    textSize (19);
    text (text [2], 300, 325 );
    boton("Salir", 45, 350, 80, 32);
    boton("Quedarte", 510, 350, 80, 32);
  } 
  
  
  //final 1
  else if (estado == 4) {
    background (0);
    fill (255);
    textSize (19);
    text (text [3],  300, 325);
    boton("Continuar", 510, 350, 80, 32); 
  }
  
  
  //pantalla´pasillo
  else if (estado == 5) {
    image( bgs [10], 0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [4], 300, 325);
    textSize(24);
    boton("Correr", 510, 350, 80, 32); 
     }
    
    //game over
   else if (estado == 6) {
   background (0);
    fill (255);
    textSize (15);
    text (text [18],  300, 325);
    boton("Volver al menú", 510, 350, 85, 40); 
   }
   //continuacion pasillo
   else if (estado == 7) {
   image( bgs [9], 0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [5],  300, 325);
    boton("Continuar", 510, 350, 85, 40);
   }
   //3 calles
   else if (estado ==8) {
    image(bgs [7], 0, 0, width, height );
    fill (255);
    textSize (20);
    text (text [6],  300, 300);
    boton("Izquierda", 45, 350, 80, 32);
    boton("Derecha", 510, 350, 80, 32);
   }
   
   //pantallas izquierda
   else if (estado == 9) {
    image( bgs [5], 0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [7],  300, 325);
    boton("Subirse", 510, 350, 80, 32);
   }
   
   
   else if (estado == 10) {
    image( bgs [3], 0, 0, width, height );
    fill (255);
    textSize (20);
    text (text [8], 300, 300);
    boton("Entrar", 45, 350, 80, 32);
    boton("Seguir", 510, 350, 80, 32);
   }
   
   
   else if (estado == 11) {
    image( bgs [11], 0, 0, width, height );
    fill (0);
    textSize (17);
    text (text [9], 300, 325);
     boton("Continuar", 510, 350, 80, 32);
   }
   
   
   else if (estado == 12){
    image( bgs [14],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [10], 300, 325);
    boton("Seguir recto", 45, 350, 80, 32);
    boton("Doblar", 510, 350, 80, 32);
   }
   
    else if (estado == 13){
    image( bgs [15],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [11], 300, 325);
    boton("Continuar", 510, 350, 80, 32);
    }
    
    
    else if (estado == 14){
    image( bgs [16],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [12],300, 325);
    boton("Creditos", 510, 350, 80, 32);
    }
    
    //pantallas derecha
    else if (estado == 15){
    image( bgs [4],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [13],300, 325);
   boton("Si", 510, 350, 80, 32);
   }
    
    else if (estado == 16){
    image( bgs [12],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [14],300, 325);
    boton (" No",510, 350, 80, 32);
    }
    
    else if (estado == 17){
    image( bgs [12],0, 0, width, height );
    fill (255);
    textSize (17);
    text (text [15], 300, 325);
    boton("Continuar", 510, 350, 80, 32);
    }
    
    else if (estado == 18){
    background (0);
    fill (255);
    textSize (15);
    text (text [16],  300, 325);
    boton("Volver al menú", 510, 350, 85, 40); 
    }
    
    // creditos
     else if (estado == 19){
    background (0);
    fill (255);
    textSize (25);
    text (text [17], 300, 200);
    textSize(17);
    boton("Volver al menú", 510, 350, 85, 40); 
    }
   
    
}
  // void de los cambios de estados
  void mousePressed(){
    
    if ( estado== 0 ) {
      if (inte (mouseX, mouseY,150, 300, 90, 32 )) {
      estado=1; 
    }}
      if ( estado== 0 ) {
       if (inte (mouseX, mouseY, 350, 300, 90, 32)); {
      estado=19; }
    }
    
    
    else if ( estado ==1) {
        if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=2;}
      }
     
        
    else if (estado == 2 ) {
           if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=3;}
        
      }
      
      
    else if (estado == 3 ) {
          if (inte (mouseX, mouseY,45, 350, 80, 32)) {
      estado=5;
      } 
         if (inte (mouseX, mouseY,510, 350, 80, 32)) {
      estado=4;
      } 
      } 
    
    else if ( estado ==5) {
        
         if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=7;}
      }
      
      
     else if (estado == 4) {
          if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=6;}
      }
   
    
     else if (estado == 6) {
         if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=0;}
      }
      
      
      else if (estado == 7) {
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=8;}
        } 
        
        
      else if (estado == 8) {
             if (inte (mouseX, mouseY,45, 350, 80, 32)) {
      estado=9;
      }  
       if (inte (mouseX, mouseY,510, 350, 80, 32)) {
      estado=15;
      } 
      }  
        
        
      else if (estado == 9) {
      if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=10;}
      }
      
      
      else if (estado == 10) {
           if (inte (mouseX, mouseY,45, 350, 80, 32)) {
      estado=12;
      }  
       if (inte (mouseX, mouseY,510, 350, 80, 32)) {
      estado=11;
      } 
      }
       else if (estado == 11){
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=6;}
      }
      
      else if (estado == 12){
           if (inte (mouseX, mouseY,45, 350, 80, 32)) {
      estado=14;
      }  
       if (inte (mouseX, mouseY,510, 350, 80, 32)) {
      estado=13;
      } 
      }  
      
       else if (estado == 13){
       if (inte (mouseX, mouseY,510, 350, 80, 32)) {
      estado=6;}
      }
      
      
 else if (estado == 14){
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=19;}
      }
      
      
       else if (estado == 15){
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=16;}
      }  
      
       else if (estado == 16){
      if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=17;}
    }  
      
      
      
      else if (estado == 17){
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=18;}
      }
      
      else if (estado == 18){
      if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=6;}
      }
      
       else if (estado == 19){
       if (inte (mouseX, mouseY, 510, 350, 80, 32)) {
      estado=0;}
      }
       


      }

       
