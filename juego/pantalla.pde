void gameover()
{
  copy(imggo,0,0,1050,784,0,0,width,height);
  copy(botones,0,0,50, 35,width/2-75, height*2/3-20,150,100);
  copy(botones,110,0,35, 50,width/2-25, height*2/3+12,60,165);
  copy(botones,0,65,50, 100,width/2-93, height*2/3+111,180,220);
  
  
    botella.pos.x=width+80; 
    bolsa.pos.x=width+80;
    llanta.pos.x=width+80;
    pila.pos.x=width+80;
    vaso.pos.x=width+80;
    velchoque=10;
    J1.pos.y=100;
    J1.pos.x=50;
    if(mousePressed && mouseX <=(width/2-44)+90 && mouseX >=(width/2-44) && mouseY <=(height*2/3+34)+32 && mouseY >=(height*2/3+34))
      {
          vida=3;
          p=2;
      }
    
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73)+38 && mouseY >=(height*2/3+73))
      {
          vida=3;
          p=3;
      }  
    
    if(mousePressed && mouseX <=(width/2-43)+90 && mouseX >=(width/2-43) && mouseY <=(height*2/3+118+30) && mouseY >=(height*2/3+118))
      {
        p=6;
      }  
      
}

void inicio()
{
  
  copy(imginc,0,0,1560, 1160,0,0,width,height);
  copy(botones,0,0,50, 35,width/2-75, height*2/3-40,150,80);
  copy(botcon,0,36,90, 90,width/2-75, height*2/3+40,150,80);
  copy(botones,142,0,200, 35,width/2-75, height*2/3+42,452,80);
  copy(botones,0,65,50, 100,width/2-93, height*2/3+78+42,180,200);
    botella.pos.x=width+80; 
    bolsa.pos.x=width+80;
    llanta.pos.x=width+80;
    pila.pos.x=width+80;
    vaso.pos.x=width+80;
    velchoque=10;
    J1.pos.y=100;
    J1.pos.x=50;
   
    if(mousePressed && mouseX <=(width/2+47) && mouseX >=(width/2-43) && mouseY <=(height*2/3+30) && mouseY >=(height*2/3) )
      {
        vida=3;
        p=2;
        botella.pos.x=width+80; 
        bolsa.pos.x=width+80;
        llanta.pos.x=width+80;
        pila.pos.x=width+80;
        vaso.pos.x=width+80;
        velchoque=10;
        J1.pos.y=100;
        J1.pos.x=50;
      }
      
      if(mousePressed && mouseX <=(width/2-75+150) && mouseX >=(width/2-75) && mouseY <=height*2/3+40+30 && mouseY >=(height*2/3+40) )
      {
        p=7;
      }
      
    if(mousePressed && mouseX <=(width/2+45) && mouseX >=(width/2-45) && mouseY <=(height*2/3+70+42) && mouseY >=(height*2/3+40+42))
      {
        p=5;
      }
      
    if(mousePressed && mouseX <=(width/2+47) && mouseX >=(width/2-42) && mouseY <=(height*2/3+110+42) && mouseY >=(height*2/3+80+42))
      {
        p=6;
      }  
}

void pausa()
{
    background(0); 
    copy(botpau,0,0,32,32,width/2-120,height/2-380,200,200);
    copy(insp,0,0,350,175,0,height/2-180,width,height/2);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+100,180,220);
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+19) && mouseY >=(height*2/3+107))
      {
        p=6;
      }  
    velchoque=0;
      
}

void game()
{
    background(#2D8EFA);
      copy(imggo,0,627,1050,784,0,height*4/5,width,height);
        
        botella.mover(2);
        bolsa.mover(1);
        llanta.mover(3);
        papel.mover(2);
        vaso.mover(2);
        
       
        botella.mostrar(5);
        bolsa.mostrar(1);
        llanta.mostrar(2);
        papel.mostrar(3);
        vaso.mostrar(4);
        
        botella.choque();
        bolsa.choque();
        llanta.choque();
        papel.choque();
        vaso.choque();
        
        pila.mover(); 
      
        pila.choque(); 
        pila.mostrar(); 
        if(bolsa.out())
        {
          bolsa = new basura(1);
        }
        if(botella.out())
        {
          botella = new basura(2);
        }
        if(llanta.out())
        {
          llanta = new basura(1);
        }
        if(papel.out())
        {
          papel= new basura(2);
        }
        if(vaso.out())
        {
          vaso = new basura(2);
        }
        if(pila.out())
        {
          pila = new poder();
        }
        J1.movJ1();  
        J1.mostrar();  
        u = velchoque;
}

void creditos()
{
    background(100);
    copy(botones,110,0,35, 50,width/2-425, height*2/3+12,60,165);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+100,180,220);
    
    if(mousePressed && mouseX <=(width/2-426)+52 && mouseX >=(width/2-444) && mouseY <=(height*2/3+73)+38 && mouseY >=(height*2/3+73))
      {
          vida=3;
          p=3;
      }
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+19) && mouseY >=(height*2/3+107))
      {
        p=6;
      }  
}

void controles()
{
    background(255);
    copy(botones,110,0,35, 50,width/2-425, height*2/3+12,60,165);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+100,180,220);
    
    if(mousePressed && mouseX <=(width/2-426)+52 && mouseX >=(width/2-444) && mouseY <=(height*2/3+73)+38 && mouseY >=(height*2/3+73))
      {
          vida=3;
          p=3;
      }
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+19) && mouseY >=(height*2/3+107))
      {
        p=6;
      }  
}

void salida()
{
  exit();
}
