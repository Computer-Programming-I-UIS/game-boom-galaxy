/*
boolean jugadorIzq=false;
boolean jugadorDer=false;
boolean jugadorUp=false;
boolean jugadorDown=false;
boolean jugadorVisionD=false;
boolean jugadorVisionI=false;
float x_=100;
float y_=300;
float speed=2;
void keyPressed(){
    switch(keyCode){
      case 'a':
      case 'A':
        jugadorIzq = true;
        jugadorVisionI = true;
        jugadorVisionD = false;
         if( (jugadorDer = false) &&  (jugadorIzq = true) ){ x_= x_-speed;}
        
      break;
      case 's':
      case 'S':
        jugadorDown = true;
         if((jugadorUp = false) && (jugadorDown = true)){
        y_=y_+speed;
      }
      break;
      case 'd':
      case 'D':
        jugadorDer = true;
        jugadorVisionI = false;
        jugadorVisionD = true;
        if( (jugadorDer = true) &&  (jugadorIzq = false) ){ x_= x_+speed;}
      break;
      case 'w':
      case 'W':
        jugadorUp = true;
        jugadorDown = false;
        if((jugadorUp = true) && (jugadorDown = false)){
        y_=y_-speed;
      }
        
      break;
     
    }
  
}
void keyReleased(){
 
  switch(key){
    case 'a':
    case 'A':
      jugadorIzq = false;
    break;
    case 's':
    case 'S':
      jugadorDown = false;
    break;
    case 'd':
    case 'D':
      jugadorDer = false;
    break;
    case 'w':
    case 'W':
      jugadorUp = false;
    break;
    case 'j':
    case 'J':
    case '1':
      
      
    break;
    }
  }  
