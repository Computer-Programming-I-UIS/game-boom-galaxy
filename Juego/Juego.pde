int i = 0;
Movimiento comandante ;
Movimiento disparo;
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
imageMode(CENTER);
  image(player,x,y);
if(mousePressed){
  fill(252, 252, 20);
  triangle(x+40,y+10,x+90,y,x+90,y+30);
}
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
disparo = new Movimiento(600,550);
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
