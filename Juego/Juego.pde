// Imagenes
PImage escenario1;
PImage player;
PImage enemy;

//Variables para el movimiento
float x;
float y;
float r;
boolean jugadorIzq=false;
boolean jugadorDer=false;
boolean jugadorUp=false;
boolean jugadorDown=false;
boolean jugadorVisionD=false;
boolean jugadorVisionI=false;
float x_=100;
float y_=300;
float speed=2;


void setup(){
size(700,600);
escenario1 = loadImage("escenario.png");
player = loadImage("personaje.png");
enemy = loadImage("enemigo.png");

}
void draw(){
background(escenario1);
keyPressed();
image(enemy,200,300);

}
