 void nivel1(){
 
background(escenario1);
image(teclas,20,20);
image(mouse,230,20);
image(bloques,0,568);
image(bloques,610,200);
image(enemy,620,110);
fill(255);
textSize(20);
text("Haz click para disparar.",200,200);
comandante.Mheroe();
comandante.Moveheroe();
comandante.Jumphero();
Backmenu();


 }
 
