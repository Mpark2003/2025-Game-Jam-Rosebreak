//Movement
if move=0
{
  speed=2;
  direction=aim;   
  image_angle = direction;
}
if move=2
{
}

///Attack
var inst;
var i;
if instance_exists(Player_Parent)
{
    aim=point_direction(x,y,Player_Parent.x,Player_Parent.y);
}
else
{
    aim=270;
}   
if instance_exists(Player_Parent)




///Death
if (hp<=0)
{
    scr_EnemyDeath();   
}


///Damage
if hp<damage
{
    image_blend=c_red;
    damage=hp;
    if heavyHit=1{heavyHit=0;}
    if bombHit=1{bombHit=0;}
}
else
{
        image_blend=c_white;
}