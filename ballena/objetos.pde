class botellas
{
  int y;
  int q = 101;
  int p;
  botellas (int temy)
  {
  y = temy;
  }
  
  
  void crash()
  {
    
      q =  constrain(q + p, 0, 480);
    
    y -= 1;
    p = 3;
    y = constrain (y -=2, 0, 1100);
    
    
    
    if (q <= 1000 && q >= 100 && y < 1100 && y > 0 ) // cuando oprimes arriba se mueve la paleta
    {
      copy(imgb,0,0,120,120,y,q,180,180);  
    }
    
  }
  
}
