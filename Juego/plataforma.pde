class Plataforma extends FBox
{
 Plataforma(float _w, float _h)
 {
 super(_w, _h);
 }
void inicializar(float _x, float _y)
{
 setName("plataforma");
 setPosition(_x, _y);
 setStatic(true);
  attachImage(loadImage("5bloques.png"));
}

}
