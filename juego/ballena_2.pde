poder pila;
basura botella;
basura bolsa;
basura llanta;
basura papel;
basura vaso;
ballena J1;   
import ddf.minim.*;
Minim fondo;
AudioPlayer f;
PImage imga,imgb, imgc, imgd, imge, imgf, imgg;
int ent = 1;
int x = 1000, m = 0, d = 0;
float blar=0, balt=0, velchoque = 5;// velocidad de movimiento inicial 
int contadora = 0, contadorb = 0;

void settings()
{
  fullScreen();//pantalla completa
}

void setup()
{
  
  fondo = new Minim(this);
  f = fondo.loadFile("best-friend.wav");
  imga = loadImage("j1.png");
  imgb = loadImage("obs.png");
  imgc = loadImage("eng.png");
  imgd = loadImage("bolsa.png");
  imge = loadImage("llanta.png");
  imgf = loadImage("papel.png");
  imgg = loadImage("vaso.png");
  pila = new poder();// declarar elobjeto 
  bolsa = new basura();// declarar elobjeto
  llanta = new basura();// declarar elobjeto
  papel = new basura();// declarar elobjeto
  vaso = new basura();// declarar elobjeto
  botella = new basura();
  J1 = new ballena (30);//declarar la 
  
}

  void draw(){
    
      background(#071493);
      
      
      J1.movJ1(); // movimiento ballena 
      
      pila.mover(); // mover la ballena
      
      pila.choque(); // funcion de rebote apartir de la ballena 1
      J1.mostrar(); // impresion paleta 1
      
        botella.mover();
        bolsa.mover();
        llanta.mover();
        papel.mover();
        vaso.mover();
      
        botella.choque();
        bolsa.choque();
        llanta.choque();
        papel.choque();
        vaso.choque();
        
        botella.mostrar(5);
        bolsa.mostrar(1);
        llanta.mostrar(2);
        papel.mostrar(3);
        vaso.mostrar(4);
      
      if (pila.out()) // en caso de salir la basura restablecer velocidad 
      {
        
        pila = new poder(); // creacion de la nueva pelora 
      }
      pila.mostrar(); // mostrar pelota
      
   }
  
