
 void nivel1(){

background(escenario1);
fill(255);
textSize(20);
text("Haz click para disparar.",200,200);


comandante1.actualizar();

 world.step();
 world.draw();
image(bloques,0,568);
 }
 
