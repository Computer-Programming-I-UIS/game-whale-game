poder pila;
basura botella,bolsa, llanta, papel, vaso, onda;
ballena J1;   
import ddf.minim.*;
Minim fondo;
AudioPlayer f;
PImage imga,imgb, imgc, imgd, imge, imgf, imgg,imgp,imgo,imgco, imggo, imgs,imginc,botones,botpau,insp, botcon;
int ent = 1;
int x = 1000, m = 0, d = 0, p=3;
float blar=0, balt=0, velchoque = 10, u =10; 
int contadora = 0, contadorb = 0, vida=3;
void setup()
{
  fullScreen();//pantalla completa
  fondo = new Minim(this);
  f = fondo.loadFile("best-friend.wav");
  insp = loadImage("C.png");
  botcon = loadImage("control.png");
  imga = loadImage("j1.png");
  imgb = loadImage("obs.png");
  imgc = loadImage("eng.png");
  imgd = loadImage("bolsa.png");
  imge = loadImage("llanta.png");
  imgf = loadImage("papel.png");
  imgg = loadImage("vaso.png");
  imgp = loadImage("4.png");
  imgco = loadImage("corazon.png");
  imggo = loadImage("go.png");
  imgs = loadImage("suelo.png");
  imginc = loadImage("inicio.png");
  botones = loadImage("botones.png");
  botpau = loadImage("pausa.png");
  pila = new poder();// declarar elobjeto 
  bolsa = new basura(1);
  onda = new basura(1);// declarar elobjeto
  llanta = new basura(1);// declarar elobjeto
  papel = new basura(2);// declarar elobjeto
  vaso = new basura(2);// declarar elobjeto
  botella = new basura(2);
  J1 = new ballena (30,3);//declarar la 
  
}

  void draw()
  {
    if(p==2)
    {
      game();
    }
    
    if (p==3)
    {
      inicio();
    }
    
    if(p==1)
    {
       gameover();
    }
      
    if(p==4)
    {
      pausa();
    }
    
    if(p==5)
    {
      creditos();
    }
    
    if(p==6)
    {
      salida();
    }
    
    if(p==7)
    {
      controles();
    }
  }
