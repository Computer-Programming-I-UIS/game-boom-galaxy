class Personaje extends FBox
{
 
  boolean IzqPressed, DerPressed, UpPressed;
  boolean puedesaltar;
  boolean alive;
  
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
}
void actualizar(){
if(alive){
if(IzqPressed){
setVelocity(-90,getVelocityY());
}
if(DerPressed){
setVelocity(90,getVelocityY());
}
if(! IzqPressed && !DerPressed){ // si no se preciona ninguna tecla el personaje se quede quieto y no se siga moviendo por la velocidad que llevaba 
setVelocity(0,getVelocityY());
}
if(UpPressed && puedesaltar){
setVelocity(getVelocityX(),-220);
puedesaltar= false;
}



}

}

void muerte(){
alive =false;


}




}
