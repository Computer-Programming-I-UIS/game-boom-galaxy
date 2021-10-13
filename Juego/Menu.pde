void menu(){
  imageMode(CORNER);
 image(fmenu,0,0);
 play1();
 creditosP();
titulo();
textSize(50);
fill(j,255,j2);
text("Jugar",width/2-60,height/2);
fill(c,255,c2);
text("Creditos", width/2-90, height/2+90);
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

}
boolean play=false;
boolean credits= false;
boolean locked=false;
boolean locked2=false;
boolean locked3=false;
boolean backmenu=false;
float j=255;
float c=255;
float j2=255;
float c2=255;
void play1(){
if(mouseX>=280 && mouseX<=430 && mouseY>=256 && mouseY<=300){
  play=true;
j2=0;
if(locked==true){
Nivel=1;
}

  }else {
    play= false;
   j2=255;
   
  }
}

void creditosP(){
if(mouseX>=255 && mouseX<=465 && mouseY>=346 && mouseY<=400){
credits=true;
c2=0;
if(locked2==true){Nivel=6;}
}else {
    credits= false;
   c2=255;
   
  }

  
}
void Backmenu(){
fill(255,0,15);
text("Menu",520,580);
if(mouseX>=515 && mouseX<=600 && mouseY>=543 && mouseY<=583){
 backmenu=true;
if(locked3==true){
 Nivel=0;
}
}
}


void mousePressed(){
if (play){
  locked=true;
 
  }

if(credits){
locked2=true;

}
 if(backmenu){
 locked3=true;
 }
}
void mouseReleased(){
locked3=false;
locked2=false;
locked=false;
}
