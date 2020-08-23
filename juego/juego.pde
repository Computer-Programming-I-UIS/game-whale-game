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
    J1.pos.y =  constrain(J1.pos.y-velchoque*2, J1.alt, height-(height/5)); // delimitacion del movimiento con las flechas
    }
    if (keyPressed && keyCode == DOWN)  // cuando oprimes abajo se mueve la paleta
    {
    J1.pos.y =  constrain(J1.pos.y+velchoque*2, J1.alt, height-(height/5)); // delimitacion del movimiento con las flechas
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


 
