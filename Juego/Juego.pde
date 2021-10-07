int i = 0;
Movimiento comandante ;
// Imagenes
PImage escenario1;
PImage escenarioTuto;
PImage player;
PImage enemy;
PImage fmenu;
PFont titulos;


class Movimiento{

  float x;
  float y;
  int diameter;
  float speed = 4;


  Movimiento(float tempX, float tempY){
  x = tempX;
  y = tempY;
}
void Mheroe(){
image(player,x-500,y-150);
}

void Moveheroe(){
  if(keyPressed &&(key == CODED)){
    if(keyCode == RIGHT){
      x = x + speed;
    }
    else if(keyCode == LEFT){
      x = x - speed;
    
    }
  }
}


}





void setup(){
size(700,600);
imageMode(CENTER);
titulos = loadFont("titulos.vlw");
textFont(titulos);
escenario1 = loadImage("escenario.png");
escenarioTuto = loadImage("escenarioTuto.png");
player = loadImage("personaje.png");
enemy = loadImage("enemigo.png");
comandante = new Movimiento(600,550);
fmenu = loadImage("fondomenu.jpg");
}
void draw(){
menu();
nivel1();
creditos();
}
