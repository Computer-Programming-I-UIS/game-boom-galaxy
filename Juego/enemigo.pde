class Enemigo extends FBox
{
  String tipo;
 Enemigo(float _w, float _h, String _tipo)
 {
 super(_w, _h);
 tipo=_tipo;
 }
void inicializar(float _x, float _y)
{
  if(tipo.equals("alien")){
   setName("alien");
 setPosition(_x, _y);
 setStatic(true);
  }
setPosition(_x,_y);
setRotatable(false);
}

}
