int x=5;
int d=0;
int y=0;

objeto botella;
ballena blanca ;

void setup()
{
  botella = new objeto();
  blanca = new ballena ();
  size (1200,600);//Dimensiones de la pantalla
}
void draw ()
{
    clear();
    background(#446BF2);//fondo
    strokeJoin(MITER);//tipo de esquinas
    strokeWeight(4);//grosor del borde
    scale (1);//escala
    
    blanca.move();
     
    
fill(0);
text(mouseX,0,10);
text(mouseY,0,30);
}
