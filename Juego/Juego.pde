Movimiento comandante ;
class Movimiento{
  float x;
  float y;
  int diameter;
  float speed = 2;

  Movimiento(float tempX, float tempY){
  x = tempX;
  y = tempY;
}
void Mheroe(){
image(player,x,y);
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

// Imagenes
PImage escenario1;
PImage player;
PImage enemy;



void setup(){
size(700,600);
imageMode(CENTER);
escenario1 = loadImage("escenario.png");
player = loadImage("personaje.png");
enemy = loadImage("enemigo.png");
comandante = new Movimiento(600,550);
}


void draw(){
background(escenario1);
//image(player,width/2,height/2);
//image(enemy,200,300);
comandante.Mheroe();
comandante.Moveheroe();
}
