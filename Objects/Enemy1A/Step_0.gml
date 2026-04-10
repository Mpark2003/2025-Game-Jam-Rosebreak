/// @description 

//Movement
if move=0
{
    mom-=0.1;
    if mom<=0
    {
     move=1;
     mom=0;
     alarm[1]=120;
    }
}
if move=2
{
    mom+=0.1;
}
y+=mom;


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
{
    if !fire && move!=2
    {
        fire=true;
        var rand=choose(-3,3);
        inst=instance_create_depth(x+rand,y+10,0,EB_Free1);
        inst.spd=3;
        inst.direction=aim; 
        inst.master=id;
        alarm[0]=70-(global.enemyRank/6);
    }
}



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



