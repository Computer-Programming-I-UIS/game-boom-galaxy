int i = 0;
Movimiento comandante ;
// Imagenes
PImage escenario1;
PImage escenarioTuto;
PImage creditos;
PImage player;
PImage enemy;
PImage fmenu;
PFont titulos;
PImage bloque;
PImage teclas;
int sizeBlocks =32;
int numBlocksX= 22;
int numBlocksY=19;
int floor=484;
class Movimiento{

  float x;
  float y;
  int diameter;
  float speed = 4;
  float speedy=10;
  boolean trans=false;

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

void Jumphero(){
 
   if(keyPressed &&(key == CODED)){
    if(keyCode == UP){
      y = y - speedy;
   
     
      
    }
    else if(keyCode == DOWN){
      y = y + speedy;
    
    }
    
  }
  
}
void disparo(){
if(keyCode == 'c'){
trans=true;
if(trans==true){
fill(0);
triangle(x-450,y-125,x-550,y-200,x,y);

}
}

}


void keyReleased(){
trans=false;

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
creditos =loadImage("creditos.png");
bloque = loadImage("bloque.png");
teclas = loadImage("Teclas.png");

}
void draw(){
menu();
creditos();
nivel1();

}
