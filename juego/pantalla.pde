void gameover()
{
  copy(imggo,0,0,150,112,0,0,width,height);
  rect(width/4, height*3/4,80,20);
  onda.pos.x=width+80;
    botella.pos.x=width+80; 
    bolsa.pos.x=width+80;
    llanta.pos.x=width+80;
    pila.pos.x=width+80;
    vaso.pos.x=width+80;
    velchoque=10;
    J1.pos.y=100;
    J1.pos.x=50;
}

void inicio()
{
  copy(imginc,0,0,690,510,0,0,width,height);
  rect(width/4, height*3/4,80,20);
   onda.pos.x=width+80;
    botella.pos.x=width+80; 
    bolsa.pos.x=width+80;
    llanta.pos.x=width+80;
    pila.pos.x=width+80;
    vaso.pos.x=width+80;
    velchoque=10;
    J1.pos.y=100;
    J1.pos.x=50;
}

void pausa()
{
      
      
      
      if ( keyCode== 'C'||keyCode== 'c')
    {
      velchoque = u;
      p=2;
    }
}
