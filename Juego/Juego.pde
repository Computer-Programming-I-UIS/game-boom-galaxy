import fisica.*;

FWorld world;
Plataforma piso;
ArrayList <Plataforma> plataformas;
Personaje comandante1, disparo;
Enemigo alien, teleport;

String anuncio;

import ddf.minim.*;
Minim minim;
AudioPlayer menum;

int i = 0;
int Nivel=0;
/*Movimiento comandante ;
Movimiento disparo;*/
// Imagenes
PImage escenario1;
PImage escenarioTuto;
PImage creditos;
PImage player;
PImage enemy;
PImage fmenu;
PFont titulos;
PImage bloques;
PImage controles;
PImage win;

int sizeBlocks =32;
int numBlocksX= 22;
int numBlocksY=19;
int floor=484;





/* ---------------------------------------------------------Setup-------------------------------------------------------------------------------------------------------------------*/
void setup(){
size(700,600);
imageMode(CENTER);
titulos = loadFont("titulos.vlw");
win = loadImage("win.png");
textFont(titulos);
escenario1 = loadImage("escenario.png");
escenarioTuto = loadImage("escenarioTuto.png");
player = loadImage("personaje.png");
enemy = loadImage("enemigo.png");
/*comandante = new Movimiento(45,523);
disparo = new Movimiento(600,550);*/
fmenu = loadImage("fondomenu.jpg");
creditos =loadImage("creditos.png");
bloques = loadImage("piso.png");
controles =loadImage("controles.png");
minim= new Minim(this);
menum = minim.loadFile("sonido.mp3");
/*-----------------------------------------------------Uso de la libreria 'Fisica'---------------------------------------------------------------------------------------*/
Fisica.init(this);
world = new FWorld();
world.setEdges();

piso = new Plataforma(width, 45);
piso.inicializar(width / 2, height - 8);
world. add(piso);

plataformas = new ArrayList <Plataforma> ();
for(int i=0; i<4; i++){
  Plataforma p = new Plataforma(160,32);
  p.inicializar(i*100  + 220, height - 100 - (i*110));
  world.add(p);
  plataformas.add(p);

}
comandante1= new Personaje(80,92);
comandante1.inicializar(40, height * 0.75);
world.add(comandante1);

/*disparo= new Personaje(20,90);
disparo.inicializar(45, height * 0.75);
world.add(disparo);*/

alien = new Enemigo(80,80, "alien");
alien.inicializar(plataformas.get(2).getX()+30, plataformas.get(2).getY() - alien.getHeight() / 2 - plataformas.get(3).getHeight() / 2);
world.add(alien);

teleport = new Enemigo(40,40, "teleport");
teleport.inicializar(plataformas.get(3).getX(), plataformas.get(3).getY() - alien.getHeight() / 2 - plataformas.get(3).getHeight() / 2);
world.add(teleport);

textMode(CENTER);
anuncio="";
 
  

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
  
  case 3:
  opcionesT();
  break;
  
  case 4:
  creditos();
  break;
  



}
fill(255,15,15);
textSize(60);

text(anuncio, width / 2 - 120, height / 2);
 
}
void keyPressed(){
if (key== 'a'){
comandante1.IzqPressed = true;
}
if (key== 'd'){
comandante1.DerPressed = true;
}
if (key== 'w'){
comandante1.UpPressed = true;
}
if(key== ENTER){
Nivel=0;
anuncio="";
comandante1.inicializar(40, height - 100);
world.add(comandante1);
comandante1.actualizar();
}

}
void keyReleased(){
if (key== 'a'){
comandante1.IzqPressed = false;
}
if (key== 'd'){
comandante1.DerPressed = false;
}
if (key== 'w'){
comandante1.UpPressed = false;
}

}
void contactStarted(FContact contact){
FBody _body1= contact.getBody1();
FBody _body2= contact.getBody2();

//contacto entre el personaje y la plataforma
  if ((_body1.getName() == "personaje" && (_body2.getName() == "plataforma"))
  || (_body2.getName() == "personaje" && (_body1.getName() == "plataforma")))
  {
    if (contact.getNormalX() == 0 && comandante1.getVelocityY() >= 0)
    {
      if (_body1.getName() == "personaje" && contact.getNormalY() > 0)
      {
        comandante1.puedesaltar = true;
      }
      else if (_body2.getName() == "personaje" && contact.getNormalY() < 0)
      {
       comandante1.puedesaltar = true;
      }
    }
  }
  //contacto entre el alien y el personaje 
  if ((_body1.getName() == "personaje" && _body2.getName() == "alien")
  || (_body2.getName() == "personaje" && _body1.getName() == "alien")){
  if(comandante1.alive){
  gameover();
  }
  
  }
  // contacto entre personaje y teleport
   if ((_body1.getName() == "personaje" && _body2.getName() == "teleport")
  || (_body2.getName() == "personaje" && _body1.getName() == "teleport")){
  Nivel=2;
  }
  
  
  
}
void gameover(){
  anuncio= "Game Over";
  comandante1.muerte();
  world.remove(comandante1);
}
void Win(){
  anuncio= "Bien hecho";
  comandante1.muerte();
  world.remove(comandante1);
}
