//Víctor Sartori
//s04e00
int x, y, vx, vy, tam; // Variables de posicion, velocidad y "cambio".
color morado, dorado; // Variables de color.
boolean bl;
void setup() {
  size(500,500);
  x=1;
  y=1;
  vx=4;
  vy=4;
  tam=1;
  morado = color(114, 19, 102);
  dorado = color(234, 160, 13);
  
  frameRate(120);
}
void draw() {
  background(dorado);
  noStroke();
  fill(morado);
  ellipse(x, y, tam, tam);

  if (x > width || x < 0) { 
    vx *= -1;
  } 
  if (y > height || y < 0) { 
    vy *= -1;
  }
  x += vx;
  y += vy;
  
  if (tam > 300){
  tam=300;
  }
  
  if (tam < 10){
  tam=10;
  }
if (bl){
tam++;}

if(!bl){
  tam--;
}
}

void keyPressed() {
  if (key == 'q') {
   bl=!bl;
  }
}