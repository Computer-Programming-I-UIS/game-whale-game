import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
poder pila;
basura botella,bolsa, llanta, papel, vaso, onda;
ballena J1;   
Minim fondo, cho, plus,menu,historia,ff,end;
AudioPlayer f, men,his,fff,en;
AudioSample g,pl;
boolean pasar = true;
PImage imga,imgb, imgc, imgd, imge, imgf, imgg,imgp,imgo,imgco, imggo, imgs,imginc,botones,botpau,insp,insj,sig, botcon,his1,his2,his3,his4, creditos;
int ent = 1;
int x = 1000, m = 0, d = 0, p=9, pas =0;
float blar=0, balt=0, velchoque = 10, u =10; 
int contadora = 0, contadorb = 0, vida=5, latas=0, sub =0;
PFont font1;
PFont font2;
void setup()
{
  font1 = loadFont("Rockwell-CondensedBold-48.vlw");
  font2= loadFont("Arial-BoldMT-48.vlw");
  fullScreen();//pantalla completa
  fondo = new Minim(this);
  f = fondo.loadFile("menu.mp3");
  end = new Minim(this);
  en = end.loadFile("creditos.mp3");
  historia = new Minim(this);
  his = historia.loadFile("historia.mp3");
  ff = new Minim(this);
  fff = ff.loadFile("fin.mp3");
  menu =new Minim(this);
  men = menu.loadFile("fondo.mp3");
  cho = new Minim(this);
  g = cho.loadSample("trash.mp3", 1000);
  plus = new Minim(this);
  pl = plus.loadSample("pila.mp3");
  creditos = loadImage("creditos.png");
  his1 = loadImage("his1.png");
  his2 = loadImage("his2.png");
  his3 = loadImage("his3.png");
  his4 = loadImage("his4.png");
  sig = loadImage("sig.png");
  insp = loadImage("C.png");
  insj = loadImage("controles.png");
  botcon = loadImage("control.png");
  imga = loadImage("j1.png");
  imgb = loadImage("obs.png");
  imgc = loadImage("eng.png");
  imgd = loadImage("bolsa.png");
  imge = loadImage("llanta.png");
  imgf = loadImage("papel.png");
  imgg = loadImage("vaso.png");
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
     his.play();
      historia();
     
     
    }
    
    if (p==3)
    {
     f.play();
     
      inicio();
    }
    
    if(p==1)
    {
      fff.play();
       gameover();
    }
      
    if(p==4)
    {
      
      pausa();
    }
    
    if(p==5)
    {
     
      sub=height;
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
    
     if(p==8)
    {
      pas=0;
      men.play();
      his.pause();
      game();
      
      
    }
    if(p==9)
    {
      en.play();
      fin();
    }
    
  }
