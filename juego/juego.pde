poder pila;
basura botella,bolsa, llanta, papel, vaso, onda;
ballena J1;   
import ddf.minim.*;
Minim fondo;
AudioPlayer f;
PImage imga,imgb, imgc, imgd, imge, imgf, imgg,imgp,imgo,imgco;
int ent = 1;
int x = 1000, m = 0, d = 0;
float blar=0, balt=0, velchoque = 10;// velocidad de movimiento inicial 
int contadora = 0, contadorb = 0;
void setup()
{
  fullScreen();//pantalla completa
  fondo = new Minim(this);
  f = fondo.loadFile("best-friend.wav");
  imga = loadImage("j1.png");
  imgb = loadImage("obs.png");
  imgc = loadImage("eng.png");
  imgd = loadImage("bolsa.png");
  imge = loadImage("llanta.png");
  imgf = loadImage("papel.png");
  imgg = loadImage("vaso.png");
  imgp = loadImage("4.png");
  imgo = loadImage("onda.png");
  imgco = loadImage("corazon.png");
  pila = new poder();// declarar elobjeto 
  bolsa = new basura(1);
  onda = new basura(1);// declarar elobjeto
  llanta = new basura(1);// declarar elobjeto
  papel = new basura(2);// declarar elobjeto
  vaso = new basura(2);// declarar elobjeto
  botella = new basura(2);
  J1 = new ballena (30,3);//declarar la 
  
}

  void draw(){
    
      background(#071493);
        onda.mover(1);
        botella.mover(2);
        bolsa.mover(1);
        llanta.mover(3);
        papel.mover(2);
        vaso.mover(2);
        
        onda.mostrar(6);
        botella.mostrar(5);
        bolsa.mostrar(1);
        llanta.mostrar(2);
        papel.mostrar(3);
        vaso.mostrar(4);
        
        botella.choque();
        bolsa.choque();
        llanta.choque();
        papel.choque();
        vaso.choque();
        
        pila.mover(); // mover la ballena
      
        pila.choque(); // funcion de rebote apartir de la ballena 1
        pila.mostrar(); // mostrar pelota
        if(bolsa.out())
        {
          bolsa = new basura(1);
        }
        if(botella.out())
        {
          botella = new basura(2);
        }
        if(llanta.out())
        {
          llanta = new basura(1);
        }
        if(papel.out())
        {
          papel= new basura(2);
        }
        if(vaso.out())
        {
          vaso = new basura(2);
        }
        if(pila.out())
        {
          pila = new poder();
        }
        J1.movJ1(); // movimiento ballena 
        J1.mostrar(); // impresion paleta 
      
   }
