class ballena 
{
  PVector pos; 
  int alt=45,anc=140, numv;
  ballena(int P_columna,int vidas)
  { 
    pos = new PVector (P_columna, height/2); 
    numv = vidas;
  }
  
  void movJ1() // mov de la paleta 2
  {
    if (keyCode== 'P' ||keyCode== 'p')
    {
      p=4;
    }
    
    if (keyPressed && keyCode == UP)
    {
      J1.pos.y =  constrain(J1.pos.y-velchoque-10, 0, height-(height/5)); 
    }
    
    if (keyPressed && keyCode == DOWN) 
    {
      J1.pos.y =  constrain(J1.pos.y+velchoque+10, 0, height-(height/5)); 
    }
    
    if (keyPressed && keyCode == LEFT) 
    {
      J1.pos.x =  constrain(J1.pos.x-velchoque-10, 0, width-140); 
    }
    
    if (keyPressed && keyCode == RIGHT)  
    {
      J1.pos.x =  constrain(J1.pos.x+10+velchoque,0,  width-140); 
    }
  }
  
  

  void mostrar ()
  {
    if (vida>=0)
    {
      for (int i=1; i<= vida; i++)
      {
      copy(imgco,6,10,32,32,10,i*50,70,70);
      }
    }
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
    
    copy(imga,int(blar)*120,int(balt)*120,120,120,int(pos.x),int(pos.y),anc,anc); 
    
  }
  

}
