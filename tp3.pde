// COMISION 5 //<>//
// GUADALUPE VILLALONGA UNGAR, 85225/9
// TP3
// https://youtu.be/W1hheWlutWU

PImage opArt ; 
color colorCirculos; 
float centroX = 6 * width; 
float centroY = 2 * height; 
int numeroDeCirculos = 24; 
float espaciado = (min(width * 1.8, height) * 2) / numeroDeCirculos; 
float radioCentral = espaciado * 2; 
boolean cambioDeColor = false;

void setup() {
  size (800, 400);
  opArt = loadImage ("opArt.jpg");
  colorCirculos = color(254, 47, 22);
}



void draw() {
  background (169, 223, 129);

  //funcion que no retorna valor
  dibujandoOpArt ();

  // Cambia el fondo a rojo si el mouse está cerca del centro
  float distancia = calcularDistanciaAlCentro();
  if (distancia < 100) {

    background(169, 223, 129);
  }

  image (opArt, -6, 0, width/2, height/1);
}


//funcion que retorna un valor
float calcularDistanciaAlCentro() {
  float distancia = dist(mouseX, mouseY, centroX, centroY);
  return distancia;
}



void mouseClicked() {
  colorCirculos = color(254, 47, 22);
}



void keyPressed() {

  if (key == 'c' || key == 'c') {
    for (int i = 0; i < numeroDeCirculos; i++) {
      float radio = espaciado * i + radioCentral / 6;
      float distancia = dist(mouseX, mouseY, centroX, centroY);

      if (distancia >= radio * 1.8) {
        colorCirculos = color(random(255), random(255), random(255));
      }
    }
  }
}
