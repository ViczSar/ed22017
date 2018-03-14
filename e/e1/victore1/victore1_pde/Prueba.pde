class Prueba {
  String ano, mes, dia;
  int maxima, media, minima;

  Prueba(int maxima, int media, int minima) {
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;
  }

  void poto() {
    for ( int j = 0; j < 4; j++){
    line(j*165,height,maxima*4+height/2,minima*4+height/2);}
  }
}