class Personaje extends FBox
{
 Personaje (float _w, float _h)
 {
 super(_w, _h);
 }
void inicializar(float _x, float _y)
{
 setName("personaje");
 setPosition(_x, _y);
 setDamping(0);
 setRestitution(0);
 setFriction(0);
 setRotatable(false);
}

}
