void menu(){
  imageMode(CORNER);
 image(fmenu,0,0);
//float d = dist(width/2,height/2,mouseX,mouseY);
//color c = get(mouseX,mouseY);
titulo();
textSize(50);
fill(255);
text("Jugar",width/2-60,height/2);
println(mouseX,mouseY);
}
void titulo(){
textSize(80);
fill(255, 255, 110);
text("BoomGalaxy",width/2-230,height/2-90);
fill(255 );
text("BoomGalaxy",width/2-233,height/2-90);
fill(get((int)random(524,528),(int)random(564,568)));
text("BoomGalaxy",width/2-236,height/2-90);
delay(150);
}


//random(1,12),random(192,220),random(236,260)
