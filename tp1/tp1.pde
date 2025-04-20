PImage miImagen;

void setup(){
  size(800,400);
 miImagen = loadImage("frexas.jpg");
}
//READ ME: TAMARA MERELE C. IPMI: COMISION 5//
//color d fondo, medida y lineas de dibujo
void draw(){
  background(#80BFFF);
image(miImagen, 0, 0, 400,400);
//Estructura edificios 
line(473, 187, 400, 70); //linea izq
line(465, 163, 400, 48); //edif izq abajo
line(458, 151, 549, 89); //linea techo izq
line(551, 106, 465, 165); //techo izq abajo
line(549, 89, 703, 182); //linea techoder arriba
line(551, 107,697, 190);//linea techoder abajo
line(685, 201,788, 60);// edif der techo
line(687, 217, 788, 86); //edif der
line(471, 187, 475, 368);// der linea baja
line(474, 366, 400, 399); //der piso
line(684, 201, 692, 353); // izq linea baja
line(692, 353, 795, 375); //piso izq
//VENTANA
fill(204); //color de relleno de ventana redonda
ellipse(546,161, 30, 40); //Abajo
fill(255);// color ventas rectangulares
rect (490, 201, 15, 35); // ventana izq edf pricipal
rect (594, 196, 15, 40); // ventana der edf pricipal
fill(220, 220, 220);
rect (648, 200, 20, 55); // ventana der  der
//estructura en forma de cono
fill(220, 220, 220);//
ellipse(548, 220, 60, 10); // arriba curva del cilindro
fill(220, 220, 220);
line(543, 191, 520, 215); // izq al pico
line(541, 192, 556, 192); //base arriba
fill(220, 220, 220); //No pinta la estrucura de cono. 
line(545, 193, 533, 214); //----
line(556, 193, 565, 214); //linea der
line(557, 192, 575, 214); //linea der der
fill(255);// color ventas rectangulares

//Edicio parte de abajo
fill(220, 220, 220);
line(519, 216, 521, 271);//linea izq abaj cono
line(535, 226,535, 268);//otra linea cono
line(575, 215, 575, 268); //linea der der cono
line(563, 225, 563, 266);
line(520, 270, 535, 268);
line(525, 268, 562, 268);
line(562, 268, 574, 269); //Todo estructura de cono.
//
line(473, 300, 636, 302);
line(636, 302, 636, 364);
line(474, 368, 635, 367); //piso edif principal
//VENTANAS CON ARC
//arc(x, y, ancho, alto, iniciar, parar) ej del pdf
fill(160, 82, 45);// marron ??
arc(440, 230, 40, 120, PI, TWO_PI, PIE); //vent
arc(438, 374, 40, 250, PI, TWO_PI, PIE);//puertas o abertura
line(462,253, 469,368); //linea al lado de la puerta
//TECHOS.
fill(220, 220, 220);
line(440, 120, 472, 122);//cuadrado izq. Hay q pintar de blanco
line(472, 121, 474, 139);//cuadrado izq. Hay q pintar de blanco
//TECHO DER
fill(220, 220, 220);
arc(668,150, 40, 130, PI, TWO_PI, PIE); //arco arriba techo
fill(255);// color blanco
arc(668,150, 20, 100, PI, TWO_PI, PIE); //arco arriba techo adentro

line(647, 150,698,147);
line(698, 147, 699, 156);
line(699, 156, 709, 154);
line(709, 154, 711, 163);
//techo arriba arriba
line(572, 105, 611, 106);
line(611, 106, 611, 127);
//cupula
fill(220, 220, 220);
arc(590, 107, 50, 50, PI, TWO_PI, PIE);//cupula 1
triangle(591,56,583,66,596,66); //triangulo cupula
rect(585,66, 12,20);

//aberturas edf principal
fill(160, 82, 45);//color para aberturas marron
rect(520, 326, 20,40);
rect(560, 317, 15,50);
rect(602, 317, 15,50);
fill(220, 220, 220);
arc(631,131, 30, 30, PI, TWO_PI, PIE);//cupula 2
arc(631,114, 10, 50, PI, TWO_PI, PIE); //arriba cupula1
line(631, 89, 631, 72);//cruz palo
line(624, 77, 636, 77);
line(689, 350,635,350);
line(645,130,645, 146);
fill(255);
//Edificio derecha ventanas.
//quad( vértice sup izq, vert sup der, vert inf der, vert infizqu)
fill(160, 82, 45);//color para aberturas marron
quad(710, 205,723, 195, 722, 241, 710,243);
quad(741, 167, 753,155,753,212,741,214);
quad(769,127,786,113,787,194,771,197);
arc(736, 360, 25, 230, PI, TWO_PI, PIE);//puertas
arc(772, 364, 25, 270, PI, TWO_PI, PIE);//puertas


text(400 + mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
}
