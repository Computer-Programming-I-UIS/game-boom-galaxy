 void nivel1(){
  if(locked==true){
background(escenario1);
image(teclas,20,20);
image(mouse,230,20);
fill(255);
textSize(20);
text("Haz click para disparar.",200,200);
comandante.Mheroe();
comandante.Moveheroe();
comandante.Jumphero();
  }
 }
 
