import fisica.*;

FWorld world;
Plataforma piso;
ArrayList <Plataforma> plataformas;
Personaje comandante1;


import ddf.minim.*;
Minim minim;
AudioPlayer menum;

int i = 0;
int Nivel=0;
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
PImage bloques;
PImage teclas;
PImage mouse;
int sizeBlocks =32;
int numBlocksX= 22;
int numBlocksY=19;
int floor=484;


class Movimiento{

  float x=0;
  float y=0;
  int diameter;
  float speed = 4;
  float speedy=10;
  boolean trans=false;
  boolean cambioesc=false;

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
if(x>=700){
Nivel++;
x=45;
}

}

void Moveheroe(){
 
  if(keyPressed &&(key == CODED)){
    if(keyCode == RIGHT){
      x = x + speed;
    }
    else if(keyCode == LEFT){
     if(x>=45) x = x - speed;
    
    }
  }
}

void Jumphero(){
 
   if(keyPressed &&(key == CODED) ){
    if(keyCode == UP){
      if(y>=45)y = y - speedy;
   
     
      
    }
    else if(keyCode == DOWN){
     if(y<=530) y = y + speedy;
    
    }
    
  }
  
}


}


/* ---------------------------------------------------------Setup-------------------------------------------------------------------------------------------------------------------*/
void setup(){
size(700,600);
imageMode(CENTER);
titulos = loadFont("titulos.vlw");
textFont(titulos);
escenario1 = loadImage("escenario.png");
escenarioTuto = loadImage("escenarioTuto.png");
player = loadImage("personaje.png");
enemy = loadImage("enemigo.png");
comandante = new Movimiento(45,523);
disparo = new Movimiento(600,550);
fmenu = loadImage("fondomenu.jpg");
creditos =loadImage("creditos.png");
bloques = loadImage("piso.png");
teclas = loadImage("Teclas.png");
mouse =loadImage("mouse.png");
minim= new Minim(this);
menum = minim.loadFile("sonido.mp3");
/*-----------------------------------------------------Uso de la libreria 'Fisica'---------------------------------------------------------------------------------------*/
Fisica.init(this);
world = new FWorld();

piso = new Plataforma(width, 32);
piso.inicializar(width / 2, height - 8);
world. add(piso);

plataformas = new ArrayList <Plataforma> ();
for(int i=0; i<4; i++){
  Plataforma p = new Plataforma(96,32);
  p.inicializar(i*100  + 228, height - 100 - (i*100));
  world.add(p);
  plataformas.add(p);

}
comandante1= new Personaje(98,92);
comandante1.inicializar(40, height * 0.75);
world.add(comandante1);



/* --------------------------------------------------------------------Fin del setup--------------------------------------------------------------------------------------------------*/
}

/*-----------------------------------------------------------------------Draw--------------------------------------------------------------------------------------------------------*/
void draw(){
 
  
switch(Nivel){
  case 0: 
   menu();
  menum.play();
 
  
  break;
  case 1:
  menum.pause();
  nivel1();
  break;
  
  case 2:
  nivel2();
  break;
  
  case 6:
  creditos();
  break;
  



}

 
}
