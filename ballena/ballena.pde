
PImage imga;
PImage imgb;
PImage imgc;
int ent = 1;
int x = 1000;
int m = 0;
int d = 0;
float anc=0, alt=0;
b j1= new b();
botellas [] botella = new botellas [20];
baterias [] bateria = new baterias [10];

void setup ()
{
  
   for (int i=0; i<2; i++ )//datos de cada uno de mis objetos
  {
    botella [i] = new botellas (60+x);
    bateria [i] = new baterias (60+x);
    x -= 60;
  }
  size(1100, 600);
  imga = loadImage("j1.png");
  imgb = loadImage("obs.png");
  imgc = loadImage("eng.png");
  background(0);
}

void draw ()
{
  if(ent == 1)
  {
    ent +=1;
  }
  else
  {
    background(0);
    j1.move();
    for (int i=0; i<2; i++ )//funcion para llmar a mis metodos de dibujo y aumento de barras
    {
    bateria[i].eng();
    botella [i].crash();
    }
    j1.mostrar();
  }
}
