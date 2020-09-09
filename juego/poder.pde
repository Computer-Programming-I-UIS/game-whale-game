class poder
{
  PVector pos; 
  PVector vel; 
  int lado = 15; 
   
  poder()
  {
    pos = new PVector (width, random(50,height-(height/7))); // posicion inicial para el vector posicoon de la pelota
    vel = PVector.random2D();//velocidad definidio en dimenciones rando en los parametros 2d
    if (vel.x < 0.5 && vel.x >0) // en caso de la velocidad respecto a x sea muy baja aumentar a 1
    {
      vel.x=1;//velocidad en caso de que sea muy bajo
    }
    
    if (vel.x > -0.5 && vel.x <0)// en caso de la velocidad respecto a x sea muy baja aumentar a 1
    {
      vel.x= -1;//velocidad en caso de que sea muy bajo
    }
    
    vel.mult(velchoque);// velocidad del bloque apartir de choque
  }
  void mostrar () // mostrar pelotita 
  {
    copy(imgc,0,0,120,120,int(pos.x), int(pos.y),80,80); 
  }
  
   boolean out() // salida de la pelota 
     {
      return (pos.x < -lado || pos.x >width+lado); // retorno de si la pelota esta dentro o no del reciadro
      
     }
 
  void mover() // movimiento pelota 
  {
    pos.add(vel); // posicion aderir velocidad
    
    if (pos.y < 15 || pos.y> height-(height/7))// en caso de tocar extremos en y invertir velocidad para crear rebote
    {
    vel.y *= -1;
    }
    
    
  }
  
  void choque()
  {
    PVector PMC = new PVector (0,0); // vector encargado de delimitar el punto de r
    if (pos.x > J1.pos.x+J1.anc) PMC.x= J1.pos.x + J1.anc; // definicion de las pociones si se encientram delante
    else if (pos.x < J1.pos.x ) PMC.x = J1.pos.x; // definicion de las pociones si se encientram atras
    else  PMC.x = pos.x; //poscion del punto de rebote
    
    if (pos.y > J1.pos.y+(2*J1.alt)) PMC.y= J1.pos.y + J1.alt;// definicion de las pociones si se encientram delante
    else if (pos.y < J1.pos.y ) PMC.y = J1.pos.y;// definicion de las pociones si se encientram atras
    else  PMC.y = pos.y;//poscion del punto de rebote
    
    float dist = PVector.dist(PMC, pila.pos); // definicion para crear el choque 
    
    if (dist <lado)
    {
      pl.rewind();
      pl.play();
      latas +=1;
      sub +=1;
      velchoque += 0.5;
      pos.x=width+12;
      if (sub >= 10)
      {
        p=9;
      }
    }
  }
}
