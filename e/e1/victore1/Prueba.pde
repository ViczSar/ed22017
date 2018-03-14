class Prueba {
  int maxima, media, minima;

  Prueba(int maxima, int media, int minima) {
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;
  }

  void poto() {
    ellipse(media, height/2, 20,20);
  }
}