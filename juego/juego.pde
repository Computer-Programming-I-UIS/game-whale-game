class ballena // clase paleta
{
  PVector pos; // vector encargado de la pocision 
  int alt=50,anc=140; // alto y ancho de las paletas
  
  ballena(int P_columna)
  { 
    pos = new PVector (P_columna, height/2); // definicion de la posicion
  }
  
 
  
  
  void movJ1() // mov de la paleta 2
  {
    if (keyPressed && keyCode == UP) // cuando oprimes arriba se mueve la paleta
    {
    J1.pos.y =  constrain(J1.pos.y-velchoque*2, J1.alt, height-J1.alt-200); // delimitacion del movimiento con las flechas
    }
    if (keyPressed && keyCode == DOWN)  // cuando oprimes abajo se mueve la paleta
    {
    J1.pos.y =  constrain(J1.pos.y+velchoque*2, J1.alt, height-J1.alt-200); // delimitacion del movimiento con las flechas
    }
    if (keyPressed && keyCode == LEFT) // cuando oprimes arriba se mueve la paleta
    {
    J1.pos.x =  constrain(J1.pos.x-velchoque*2, J1.alt, width-140); // delimitacion del movimiento con las flechas
    }
    if (keyPressed && keyCode == RIGHT)  // cuando oprimes abajo se mueve la paleta
    {
    J1.pos.x =  constrain(J1.pos.x+velchoque*2, J1.alt,  width-140); // delimitacion del movimiento con las flechas
    }
  }
  
  void choque() //rebote de ambas pelotas
  {
      
    PVector PMC = new PVector (0,0); // vector encargado de delimitar el punto de r
    if (pila.pos.x > J1.pos.x+anc) PMC.x= J1.pos.x + J1.anc; // definicion de las pociones si se encientram delante
    else if (pila.pos.x < J1.pos.x ) PMC.x = J1.pos.x; // definicion de las pociones si se encientram atras
    else  PMC.x = pila.pos.x; //poscion del punto de rebote
    
    if (pila.pos.y > J1.pos.y+(2*J1.alt)) PMC.y= J1.pos.y + J1.alt;// definicion de las pociones si se encientram delante
    else if (pila.pos.y < J1.pos.y ) PMC.y = J1.pos.y;// definicion de las pociones si se encientram atras
    else  PMC.y = pila.pos.y;//poscion del punto de rebote
    
    float dist = PVector.dist(PMC, pila.pos); // definicion para crear el choque 
    
    if (dist <pila.lado){
      velchoque += 0.5;
      
      pila.pos.sub(pila.vel);
      pila.vel.x *= -1;
      
      PVector nVel = PVector.sub(pos,pila.pos);// deficnicon para la velocidad apartir del choque
      nVel.setMag(-pila.vel.mag());  // definicion de la velocidad para el choque
      pila.vel = PVector.lerp(nVel, pila.vel, 0.5); // encargado de hacer rebotes con angulo
      pila.vel.setMag(velchoque);// definniciion para la velocidad luego del choque
      
      pila.pos.x=width+12;
    }
}
  void mostrar ()
  {
  //f.play();
    blar += 1;
    if(blar ==4)
    {
      blar -= 4;
      balt += 1;
      if (balt ==3)
      {
        balt -= 3;
      }
    }
    d= int(pos.x);
    m= int(pos.y);
    
    copy(imga,int(blar)*120,int(balt)*120,120,120,int(pos.x),int(pos.y),140,140); 
    delay (30);
  }
}


 
