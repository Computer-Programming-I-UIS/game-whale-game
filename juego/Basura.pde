class basura 
{
  
  PVector pos; // vector de la psocion de la bola
  PVector vel; // velocidad inicial de la bola
  int lado = 15; // dimenciones d la pelota
  int lb=0,ab=0;
  basura(int lan) 
  {
    velchoque += 0.05;
    vel = PVector.random2D();
    
    if(lan==1)
    {
      pos = new PVector (width, random(0,height-lado/2)); // posicion inicial para el vector posicoon de la pelota
    }
    
    if(lan==3)
    {
      pos = new PVector (width, random(0 ,height-lado/2)); // posicion inicial para el vector posicoon de la pelota
    }
    
    if(lan==2)
    {
      pos = new PVector ( random(width/2,width-(18+lado)),-100); // posicion inicial para el vector posicoon de la pelota
    
      if (vel.y < 1.5 && vel.y >0) // en caso de la velocidad respecto a x sea muy baja aumentar a 1
      {
        vel.y=random(1.5,2);//velocidad en caso de que sea muy bajo
      }
      
      if (vel.x >0) // en caso de la velocidad respecto a x sea muy baja aumentar a 1
      {
        vel.x= vel.x*-1;//velocidad en caso de que sea muy bajo
      }
    }
    
    //velocidad definidio en dimenciones rando en los parametros 2d
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
  
  void choque()
  {
    PVector PMC = new PVector (0,0); // vector encargado de delimitar el punto de r
    if ( J1.pos.x > pos.x+ab) PMC.x= J1.pos.x + J1.anc; // definicion de las pociones si se encientram delante
    else if (J1.pos.x+J1.anc < pos.x) PMC.x = J1.pos.x; // definicion de las pociones si se encientram atras
    else  PMC.x = pos.x; //poscion del punto de rebote
    
    if (J1.pos.y > pos.y-lb) PMC.y= J1.pos.y + J1.alt;// definicion de las pociones si se encientram delante
    else if ( J1.pos.y+(J1.alt) < pos.y) PMC.y = J1.pos.y;// definicion de las pociones si se encientram atras
    else  PMC.y = pos.y;//poscion del punto de rebote
    
    float dist = PVector.dist(PMC, pos); // definicion para crear el choque 
    
    if (dist <lado)
    {
      
      g.play();
     
      vida -=1;
      if (vida ==0)
      {
        p=1;
      }
      pos.x=width+12;
      J1.numv -= 1;
    }
  }
  
  void mostrar (int j) // mostrar pelotita 
  {
        
        
      if (j==1) 
      {
        copy(imgd,0,0,120,120,int(pos.x), int(pos.y),100,100); 
        ab=80;
        lb=80;
        lado = 100;
      }
      if (j==2) 
      {
        copy(imge,0,0,98,98,int(pos.x), int(pos.y),160,140); 
        ab=150;
        lb=140;
        lado =150;
      }
      if (j==3) 
      {
        copy(imgf,0,0,99,99,int(pos.x), int(pos.y),40,40); 
        ab=35;
        lb=40;
        lado =40;
      }
      if (j==5) 
      {
        copy(imgg,0,0,74,74,int(pos.x), int(pos.y),50,50); 
        ab=40;
        lb=50;
        lado=50;
      }
    
    if(j==5)
      {
        copy(imgb,0,0,49,57,int(pos.x), int(pos.y),80,100);
        ab=80;
        lb=100;
        lado=100;
      }
      
     
  }
  
   boolean out() // salida de la pelota 
     {
      return (pos.x < -lado || pos.x >width+lado); // retorno de si la pelota esta dentro o no del reciadro
      
     }
 
  void mover(int m) // movimiento pelota 
  {
    if (m==1)
    {
      pos.x= pos.x+vel.x; // posicion aderir velocidad
      vel.y=0;
    }
    
    if (m==2)
    {
     pos.add(vel); // posicion aderir velocidad
      if (pos.y < -101 )// en caso de tocar extremos en y invertir velocidad para crear rebote
      {
      vel.y *= -1;
      }
      
      if(pos.y> height-(18+lb))
      {
         vel.y =0;
      }
    }
    
    if (m==3)
    {
     pos.add(vel); // posicion aderir velocidad
      
      if (pos.y> height-(18+lado))// en caso de tocar extremos en y invertir velocidad para crear rebote
      {
        vel.y *= -1;
      }
      if(pos.y < 15)
      {
        vel.y =0;
      }
    }
  }
  
}
