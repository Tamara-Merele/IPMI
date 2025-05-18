//TM Me falta el btn, y los cuadros estan super lentos!
//tp2 comision 5

PImage fondo, fondo1, fondo2, fondo3, fondo4, fondo5, fondo6;
float opacidadTexto = 0;
float opacidadTexto4 = 0;// todas van a tener la misma animación xd
float opacidadTexto5 = 0;
float opacidadTexto6 = 0;
int tiempoPantalla = 0;
// Para fndo2
float tamaTexto = 5; 
// Para fondo1
float yTexto; 
// Para fond3
float tamaño = 32;
boolean creciendo = true;
PFont textUno;
PFont textDos;
PFont textTres;
void setup() {
  size(640, 480);
  fondo = loadImage("oruga.jpg");
  fondo1 = loadImage("comida.jpg");
  fondo2 = loadImage("comidaMiercoles.jpg");
  fondo3 = loadImage("finde.jpg"); //comida variada de finde
  fondo4 = loadImage("domingo.jpg");  // se siente mejor
  fondo5 = loadImage("casita.jpg"); //capullo
  fondo6 = loadImage("mariposa.jpg");  // Es una bella mariposa - Yass, gurl
textUno = loadFont("BritannicBold-48.vlw");
textDos = loadFont("CopperplateGothic-Bold-48.vlw);
textTres = loadFont("LucidaFax-Demi-48.vlw");
  textAlign(CENTER, CENTER);
  yTexto = height + 50;
}

void draw() {
  background(0);
  tiempoPantalla++;

  if (tiempoPantalla < 300) {
    image(fondo, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto);
    textFont(textUno); //que funcione pls
    textSize(32);
    text("Un domingo por la mañana,\nde un huevito salió una oruga pequeñita y \nmuy hambrienta.", width/2, height/2);
    if (opacidadTexto < 255) opacidadTexto += 2;

  } else if (tiempoPantalla < 600) {
    image(fondo1, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto);
     textFont(textDos); //
    textSize(32);
    text("Ella empezó a buscar comida. \nEl lunes comió y atravesó una manzana,\nmartes comió y atravesó peras.", width/2, yTexto);
    if (yTexto > height/2) {
      yTexto -= 2;
    }

  } else if (tiempoPantalla < 900) {
    image(fondo2, 0, 0, width, height);
    fill(0, 0, 0);
    textSize(tamaTexto);
    text("El miércoles comió y atravesó tres ciruelas, \npero todavía tenía mucha hambre.", width/2, height/4);
    if (tamaTexto <= 32) tamaTexto += 0.5;

  } else if (tiempoPantalla < 1200) {
    image(fondo3, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto);
     textFont(texTres);
    textSize(tamaño);
    text("Jueves, viernes y sábado\ncomió todo lo que tenía a su paso, \npero su panza le dolió.", width/2, height/2);
    
    // Animación de tamaño del texto (latido o dolorcito)
    if (creciendo) {
      tamaño += 1;
      if (tamaño > 80) creciendo = false;
    } else {
      tamaño -= 1;
      if (tamaño < 32) creciendo = true;
    }

  } else if (tiempoPantalla < 1500) {
    image(fondo4, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto4);
    textSize(32);
    text("El domingo la oruga se comió una hoja verde \ny se sintió mucho mejor", width/2, height/2);
      if (opacidadTexto4 < 255) opacidadTexto4 += 2;

  } else if (tiempoPantalla < 1800) {
    image(fondo5, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto5);
    textSize(32);
    text("Ya no tenía hambre. \nSe construyó una casita \n(llamada capullo), alrededor de ella. \nHasta que un día...", width/2, height/2);
    if (opacidadTexto5 < 255) opacidadTexto5 += 2;

  } else if (tiempoPantalla < 2100) {
    image(fondo6, 0, 0, width, height);
    fill(0, 0, 0, opacidadTexto6);
    textSize(32);
    text("De esa casita salió \n¡UNA HERMOSA MARIPOSA!", width/2, height/2);
    if (opacidadTexto6 < 255) opacidadTexto6 += 2;
  }
}
