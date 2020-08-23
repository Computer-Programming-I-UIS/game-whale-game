basura pila; // nuevo objeto pbola clase pelota
ballena J1; // nuevos objetos paletas  
import ddf.minim.*;
Minim fondo;
AudioPlayer f;
PImage imga;
PImage imgb;
PImage imgc;
int ent = 1;
int x = 1000;
int m = 0;
int d = 0;
float blar=0, balt=0;
float velchoque = 5;// velocidad de movimiento inicial 
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
  pila = new basura();// declarar elobjeto 
  J1 = new ballena (30);//declarar la paleta 1
  
}

  void draw(){
    
      background(#071493);
      
      
      J1.movJ1(); // movimiento ballena 
      
      pila.mover(); // mover la ballena
      
      J1.choque(); // funcion de rebote apartir de la ballena 1
      J1.mostrar(); // impresion paleta 1
      if (pila.out()) // en caso de salir la basura restablecer velocidad 
      {
        velchoque = 5; // velocidad de choque
        pila = new basura(); // creacion de la nueva pelora 
      }
      pila.mostrar(); // mostrar pelota
      
   }
  
