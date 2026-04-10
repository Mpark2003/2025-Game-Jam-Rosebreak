/// @description 
if (invoked>0)
{
    if (invoked>spd)
    {
        speed=0;
    }else
    {
        speed=spd-invoked;
    }
	image_blend=c_aqua;
	effect=1;
}else
{
	speed=spd;
	image_blend=c_white;
	if (effect>0) effect-=0.1;
}

//Colisions
if global.playerDamage!=0
{
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();  
}

/*
if place_meeting(x,y,Hyper_Parent)
{
    if (global.goldRush>0){instance_create_depth(x,y,0,Item_PointL);}
    else{instance_create_depth(x,y,0,Item_Point);}
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();
}