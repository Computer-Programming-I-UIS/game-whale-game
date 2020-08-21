class b
{
  void move()
  {
    if(keyPressed){
       // player.play();
         if (keyCode == UP ){//pacman en direccion norte
          m =  constrain(m - 8 , 0, height-120);  
        }                                        // CIERRE IF UP2
         if (keyCode == LEFT ){//pacman en direccion oeste
         d =  constrain(d - 8, 0, width-120);
        }                                       // CIERRE IF LEFT
        if (keyCode == DOWN ){//pacman en direccion sur
         m =  constrain(m + 8, 0, height-120);
        }    
        if (keyCode == RIGHT ){//pacman en direccion este
          d =  constrain(d + 8, 0, width-120);
        }    
      }   
    
  }
  
  void mostrar ()
  {
    
    anc += 0.5;
    if(anc ==4)
    {
      anc -= 4;
      
      alt += 1;
      if (alt ==3)
      {
        alt -= 3;
      }
    }
    
    
    copy(imga,int(anc)*120,int(alt)*120,120,120,d,m,140,140); 
    delay (20);
  }
  
  void reset ()
  {
  
  
  
  }
  
}
