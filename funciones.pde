//funcion que no retorna un valor
void dibujandoOpArt () {

  for (int i=0; i< numeroDeCirculos; i++) {
    for (int j = 0; j < numeroDeCirculos; j++) {
      float radio = espaciado * i + radioCentral/5;

      if (i==0 && j== 0) {
        if (cambioDeColor) {
          fill (21, 186, 229);
        } else {
          fill (colorCirculos);
        }

        noStroke();
        ellipse(centroX, centroY, radio *2.5, radio *2.5);
      } else {
        noFill();
        strokeWeight (map(i, 0, numeroDeCirculos -1, 2.5, 0)*2);
        if (cambioDeColor) {
          stroke (21, 186, 229);
        } else {
          stroke (colorCirculos);
        }
        ellipse (centroX, centroY, radio*1.9, radio*1.9);
      }
    }
  }
}
