/// @description Main
var inst;
var i;
if instance_exists(Player_Parent){target=instance_nearest(x,y,Player_Parent);}
var xx=camera_get_view_x(view_camera[0])-120;
var yy=camera_get_view_y(view_camera[0])-160;
if instance_exists(target)
{aim=point_direction(x,y,target.x,target.y);}
else
{aim=270;} 
//Movement
vspeed+=0.1;

//Death
scr_EnemyDeath();
//Damage
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

///Attack
  
if (!fire) && (y<yy+160)
{
    fire=true;
    inst=instance_create_depth(x,y+2,0,EB_Free1B_V);
    inst.speed=2;
    inst.direction=random_range(120,60);
    alarm[0]=5-global.stage;
}  
