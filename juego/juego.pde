poder pila;
basura botella,bolsa, llanta, papel, vaso, onda;
ballena J1;   
import ddf.minim.*;
Minim fondo, cho, plus,menu,historia,ff;
AudioPlayer f,g,pl, men,his,fff;
boolean pasar = true;
PImage imga,imgb, imgc, imgd, imge, imgf, imgg,imgp,imgo,imgco, imggo, imgs,imginc,botones,botpau,insp,insj,sig, botcon,his1,his2,his3,his4, creditos;
int ent = 1;
int x = 1000, m = 0, d = 0, p=3, pas =0;
float blar=0, balt=0, velchoque = 10, u =10; 
int contadora = 0, contadorb = 0, vida=3, latas=0;;
PFont font1;
void setup()
{
  font1 = loadFont("Rockwell-CondensedBold-48.vlw");
  fullScreen();//pantalla completa
  fondo = new Minim(this);
  f = fondo.loadFile("best-friend.wav");
  historia = new Minim(this);
  his = historia.loadFile("historia.wav");
  ff = new Minim(this);
  fff = ff.loadFile("ff.wav");
  menu =new Minim(this);
  men = menu.loadFile("menu.wav");
  cho = new Minim(this);
  g = cho.loadFile("gba.wav");
  plus = new Minim(this);
  pl = plus.loadFile("pila.wav");
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
      men.pause();
      historia();
     
      his.play();
    }
    
    if (p==3)
    {
      fff.pause();
      men.play();
      
      inicio();
    }
    
    if(p==1)
    {
       f.pause();
       gameover();
    }
      
    if(p==4)
    {
      men.pause();
      f.pause();
      pausa();
    }
    
    if(p==5)
    {
      men.pause();
      f.pause();
      fff.play();
      
      creditos();
    }
    
    if(p==6)
    {
      men.pause();
      salida();
    }
    
    if(p==7)
    {
      men.pause();
      controles();
    }
    
     if(p==8)
    {
      pas=0;
      game();
      
      f.play();
      his.pause();
    }
    if(p==9)
    {
      fin();
    }
    
  }
