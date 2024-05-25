//TP2
//COMISION 5
// GUADALUPE VILLALONGA UNGAR, 85225/9

PFont fuente;
PImage  imagen1, imagen2, imagen3;
int pantalla, tiempo, diametro;
int animacion, pantallaAnimacion, opacidad, py;

String texto1, texto2, texto3, manga, mangaka;


void setup(){
  size(640, 480);
 
  fuente = loadFont ("ExtraBold-48.vlw");
  textFont (fuente);
  textAlign (LEFT);
  
  imagen1 = loadImage ("denji1.jpg");
  imagen2 = loadImage ("pochita2.jpg");
  imagen3 = loadImage ("makima3.jpg");
  pantalla = 0;
  tiempo = 5;
  diametro = 70;
  manga = "CHAINSAW MAN";
  mangaka = "de Tatsuki Fujimoto";
  texto1 = "El personaje principal de\nla historia es Denji\n\nUn joven pobre y cazador\nde demonios";
  texto2 ="Tras ser traicionado y asesinado\npor mafiosos, Pochita,\nse fusiona con él reviviéndolo\ncomo el Chainsaw Man";
  texto3 ="Denji es reclutado por Makima,\nuna oficial de la agencia de\ncazadores de demonios, para\nluchar contra demonios\nmientras sueña Una vida mejor";
  animacion = 0;
  pantallaAnimacion = 1;
  opacidad = 0;
  py= 510;
  
}

void draw(){
  background (90, 11, 124);
  println(frameCount, tiempo);
  animacion++; 
  
  if (animacion > 350) {
    animacion = 0;
    pantallaAnimacion++;
    if (pantallaAnimacion > 8) {
      pantallaAnimacion = 1;
    }
  }
  
  if (pantalla == 0){
    
  fill (0);
  textSize(60);
  text (manga,390 ,100); 
  textSize(32);
  text (mangaka, 470, 130);  
  
  
  if (frameCount>20){
  fill(255);
  text (texto1, 380, py);
  } 
  py --; 
  if(py>100){
}
  if(mouseY >= 10){
    tint (255);
  image (imagen1, 10, 49, 350, 350);
  } 
 }

if (pantalla == 1){
 
    image (imagen2, 30, 40, 300, 400);
    fill (0);
    textSize(60);
    text (manga,390 ,100); 
    textSize(32);
    text (mangaka, 470, 130); 
    
    push();
    if (animacion < 300) {
    opacidad = animacion;
  }
    fill(255, opacidad);
    text (texto2+ pantallaAnimacion, 380, 226);  
    pop ();
}

  if (pantalla == 2) {
    image (imagen3, 30, 40, 330, 370);
    
    fill (0);
    textSize(60);
    text (manga,390 ,100); 
    textSize(32);
    text (mangaka, 470, 130); 
   
    if (mouseX >= 305) {
    fill(255);
    text (texto3, 390, 215);
   }
    push();
    circle(600, 420, diametro);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", 600, 420 );
    pop();
    
  }
  tiempo++;
  if (tiempo >= 355) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    }
  }
}

void mouseClicked(){
  if (pantalla > 2) {
    pantalla = 0;
  }
  if (dist(mouseX, mouseY, 600, 420) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
