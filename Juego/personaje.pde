class Personaje extends FBox
{
 
  boolean IzqPressed, DerPressed, UpPressed;
  boolean puedesaltar;
  boolean alive;
  
  String direccion;
  PImage heroeder, heroeizq, heroesder, heroesizq;
  
  PImage[] heroeDer, heroeIzq;
  int frameAnimacion;
  
  Personaje (float _w, float _h)
 {
 super(_w, _h);
 }
void inicializar(float _x, float _y)
{
  IzqPressed=false;
  DerPressed= false;
  UpPressed = false;
  puedesaltar=false;
  alive=true;
  
 setName("personaje");
 setPosition(_x, _y);
 setDamping(0);
 setRestitution(0);
 setFriction(0);
 setRotatable(false);
 attachImage(loadImage("heroeder.png"));
 
 direccion = "der";
 
 heroeDer = new PImage[4];
 heroeIzq = new PImage[4];
 
 for(int i = 0;i < 4; i++){
   heroeDer[i] = loadImage("heroeder_"+i+".png");
   heroeIzq[i] = loadImage("heroeizq_"+i+".png");
 }
 
 heroeder = loadImage("heroeder.png");
 heroeizq = loadImage("heroeizq.png");
 heroesder = loadImage("heroesder.png");
 heroesizq = loadImage("heroesizq.png");
 
}
void actualizar(){
if(alive){
if(IzqPressed){
  direccion = "izq";
setVelocity(-90,getVelocityY());
}
if(DerPressed){
  direccion = "der";
setVelocity(90,getVelocityY());
}
if(! IzqPressed && !DerPressed){ // si no se preciona ninguna tecla el personaje se quede quieto y no se siga moviendo por la velocidad que llevaba 
setVelocity(0,getVelocityY());
}
if(UpPressed && puedesaltar){
setVelocity(getVelocityX(),-220);
puedesaltar= false;
}

  if(frameCount % 5 == 0){
    frameAnimacion = (frameAnimacion + 1) % 4;
  }
  if(puedesaltar){
    if(direccion == "der"){
    if(getVelocityX() == 0){
      attachImage(heroeder);
      }
    else{
      attachImage(heroeDer[frameAnimacion]);
    }
    
    }
    else{
      if(getVelocityX() == 0){
      attachImage(heroeizq);
      }
    else{
      attachImage(heroeIzq[frameAnimacion]);
    }
    }

  }
  else
  {
    if(direccion == "der");{
     attachImage(heroesder);
  
    }
    if(direccion == "izq" ){
    attachImage(heroesizq);
    }
}

}
}
void muerte(){
alive =false;


}



}
