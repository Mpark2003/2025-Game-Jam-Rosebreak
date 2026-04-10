
if (vspeed<2.5){vspeed+=0.05;}
if global.playerDamage!=0
{
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();  
}


if place_meeting(x,y,Hyper_Parent)
{
    if (global.goldRush>0){instance_create_depth(x,y,0,Item_PointL);}
    else{instance_create_depth(x,y,0,Item_Point);}
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();
}