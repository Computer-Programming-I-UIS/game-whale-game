class basura // clase pelota de la basura
{
  PVector pos; // vector de la psocion de la bola
  PVector vel; // velocidad inicial de la bola
  int lado = 15; // dimenciones d la pelota
   
  basura() 
  {
    
    pos = new PVector (width, height/2); // posicion inicial para el vector posicoon de la pelota
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
    
    if (pos.y < 15 || pos.y> height-80)// en caso de tocar extremos en y invertir velocidad para crear rebote
    {
    vel.y *= -1;
    }
    
    
  }
  
}
