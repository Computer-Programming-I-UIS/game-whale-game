class baterias
{
  int b;
  int r = 101;
  int v;
  baterias (int temb)
  {
  b = temb;
  }
  
  
  void eng()
  {
    
    r =  constrain(r + v, 0, 480);
    b -= 1;
    v = 3;
    b = constrain (b -=2, 0, 1100);
    
    
    
    if (r <= 1000 && r >= 100 && b < 1100 && b > 0 ) // cuando oprimes arriba se mueve la paleta
    {
      copy(imgc,0,0,120,120,b,r,50,50);  
    }
    
  }
  
}
