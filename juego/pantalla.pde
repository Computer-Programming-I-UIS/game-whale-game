void historia()
{
  if (pas==0)
  {
    
    background(0);
    copy(his1,0,0,150,91,25,50, width-50,height/2);
    textFont(font1, 45);
    text("Ella es Celeste, una pequeña niña de 8 años que le encanta jugar.", 80,height/2+150 );
    text("Un día cuando Celeste caminaba a la orilla del mar con ", 80,height/2+200 );
    text("su juguete favorito (una ballena a quien ella llamó Sammy).", 80,height/2+250 );
    copy(sig,0,0,64, 64,width/2-35,height*2/3+173,70,38+30);
    copy(botones,0,0,50, 35,width/2-75+100, height*2/3-40+200,150,80);
    if(mousePressed && mouseX <=(width/2+47+100) && mouseX >=(width/2-43+100) && mouseY <=(height*2/3+30+200) && mouseY >=(height*2/3+200) )
      {
        pas=4;
      }
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73+30)+38+100 && mouseY >=(height*2/3+73+100+30)){
    if(pasar == true){
      pas++;
      pasar = false;
      }
    }else
    {
    pasar = true;
    }
    
  }
  
  if (pas==1)
  {
    
    background(0);
    copy(his2,0,0,150,91,25,50, width-50,height/2);
    textFont(font1, 45);
    text("Mientras Celeste caminaba, tropezo con un valde enterrdo.", 80,height/2+150 );
    text("Haciendo que el pequeño sami saliera volando hacia el mar.", 80,height/2+200 );
     copy(sig,0,0,64, 64,width/2-35,height*2/3+173,70,38+30);
     copy(botones,0,0,50, 35,width/2-75+100, height*2/3-40+200,150,80);
    if(mousePressed && mouseX <=(width/2+47+100) && mouseX >=(width/2-43+100) && mouseY <=(height*2/3+30+200) && mouseY >=(height*2/3+200) )
      {
        pas=4;
      }
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73+30)+38+100 && mouseY >=(height*2/3+73+100+30)){
    if(pasar == true){
      pas++;
      pasar = false;
      }
    }else
    {
    pasar = true;
    }
      
  }  
  
  if (pas==2)
  {
       
    background(0);
    copy(his2,0,0,150,91,25,50, width-50,height/2);
    textFont(font1, 45);
    text("Una fuerte ola llevo al pequeño Sammy muy adentro del mar.", 80,height/2+100 );
    text("Sammy al ver a lo lejos a su dueña llorar, cobro vida", 80,height/2+150 );
    text("Para poder volver junto a su amada dueña.", 80,height/2+200 );
    text("Ayuda al pequeño Sammy a volver a su hogar junto a Celeste", 80,height/2+250 );
    text("(obten 10 baterias para tener la fuerza para regresar a casa).", 80,height/2+300 );
     copy(sig,0,0,64, 64,width/2-35,height*2/3+173,70,38+30);
     copy(botones,0,0,50, 35,width/2-75+100, height*2/3-40+200,150,80);
    if(mousePressed && mouseX <=(width/2+47+100) && mouseX >=(width/2-43+100) && mouseY <=(height*2/3+30+200) && mouseY >=(height*2/3+200) )
      {
        pas=4;
      }
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73+30)+38+100 && mouseY >=(height*2/3+73+100+30)){
    if(pasar == true){
      pas++;
      pasar = false;
      }
    }else
    {
    pasar = true;
    }
  }  
  
  if (pas==3)
  {
    
    background(0);
    copy(insj,0,0,518, 522, 0, 0, width, height);
    copy(sig,0,0,64, 64,width/2-35,height*2/3+173,70,38+30);
    copy(botones,0,0,50, 35,width/2-75+100, height*2/3-40+200,150,80);
    if(mousePressed && mouseX <=(width/2+47+100) && mouseX >=(width/2-43+100) && mouseY <=(height*2/3+30+200) && mouseY >=(height*2/3+200) )
      {
        pas=4;
      }
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73+30)+38+100 && mouseY >=(height*2/3+73+100+30)){
    if(pasar == true){
      pas++;
      pasar = false;
      }
    }else
    {
    pasar = true;
    }
  }
  
  if(pas==4)
  {
    his.rewind();
    his.pause();
    p=8;
  }
}

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
          fff.rewind();
          fff.pause();
          velchoque=10;
          sub=0;
          vida=3;
          p=8;
      }
    
    if(mousePressed && mouseX <=(width/2-26)+52 && mouseX >=(width/2-44) && mouseY <=(height*2/3+73)+38 && mouseY >=(height*2/3+73))
      {
          fff.rewind();
          fff.pause();
          vida=3;
          p=3;
          sub=0;
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
        f.rewind();
        f.pause();
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
    velchoque =0;
    background(0); 
    copy(botpau,0,0,32,32,width/2-120,height/2-380,200,200);
    copy(insp,0,0,350,175,0,height/2-180,width,height/2);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+150,180,220);
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+69) && mouseY >=(height*2/3+157))
      {
        p=6;
      }  
    
    if (keyCode== 'C' ||keyCode== 'c' )
    {
      velchoque =u;
      p=2;
    }
      
}

void game()
{
  latas =0;
    background(#2D8EFA);
      copy(imggo,0,627,1050,784,0,height*4/5,width,height);
      textFont(font2, 20);
      text("BATERIAS:",width/2-(110),50);
      text(sub,width/2,50);  
        botella.choque();
        bolsa.choque();
        llanta.choque();
        papel.choque();
        vaso.choque();
        pila.choque(); 
        
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
        
         
        pila.mover(); 
      
       
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
int y=700;
void creditos()
{
    background(0);  
    copy(creditos,0,0,937,455,width/4, y, 937, 455);
    y--;
    if(y+455 ==0) y=700;
    copy(botones,110,0,35, 50,width/2-425-150, height*2/3+12+100,60,165);
    copy(botones,0,65,50, 100,width/2+307+150, height*2/3+100+70,180,220);
    
    if(mousePressed && mouseX <=(width/2-426-150)+52 && mouseX >=(width/2-444-150) && mouseY <=(height*2/3+73)+38+100 && mouseY >=(height*2/3+73+100))
      {
          sub=0;
          vida=3;
          p=3;
      }
    
    if(mousePressed && mouseX <=(width/2+357)+90+150 && mouseX >=(width/2+357)+150 && mouseY <=(height*2/3+118+19+70) && mouseY >=(height*2/3+107+70))
      {
        p=6;
      }  
}

void controles()
{
    background(0);
    copy(insj,0,0,518, 522, 0, 0, width, height);
    copy(botones,110,0,35, 50,width/2-325, height*2/3+112+20,60,165);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+150+50,180,220);
    
    if(mousePressed && mouseX <=(width/2-326)+52 && mouseX >=(width/2-344) && mouseY <=(height*2/3+73)+38+100+20 && mouseY >=(height*2/3+73+100+20))
      {
          vida=3;
          p=3;
          sub=0;
      }
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+69+50) && mouseY >=(height*2/3+157+50))
      {
        p=6;
      }  
}

void fin()
{
  background(0);
    copy(his4,0,0,300,224,25,50, width-50,height/2);
    textFont(font1, 45);
    text("Has completado el juego correctamente, ", 80,height/2+150 );
    text("Celeste está de nuevo con Sammy y están muy felices ", 80,height/2+200 );
    text("GRACIAS POR JUGAR", 80,height/2+250 );
    copy(botones,110,0,35, 50,width/2-325, height*2/3+112,60,165);
    copy(botones,0,65,50, 100,width/2+307, height*2/3+170,180,220);
    copy(sig,0,0,64, 64,width/2-35,height*2/3+73+100-30,75,78);
    if(mousePressed && mouseX <=(width/2-26)+57 && mouseX >=(width/2-44+5) && mouseY <=(height*2/3+73)+38+100+40-30 && mouseY >=(height*2/3+73+140-30))
    {
      en.rewind();
      en.pause();
      p=5;
    }
    
    if(mousePressed && mouseX <=(width/2-326)+52 && mouseX >=(width/2-344) && mouseY <=(height*2/3+73)+38+100 && mouseY >=(height*2/3+73+100))
      {   
          en.rewind();
          en.pause();
          vida=3;
          p=3;
          sub=0;
      }
    
    if(mousePressed && mouseX <=(width/2+357)+90 && mouseX >=(width/2+357) && mouseY <=(height*2/3+118+69+20) && mouseY >=(height*2/3+177))
      {
        p=6;
      }
    
}

void salida()
{
  exit();
}
