

if instance_exists(Player_Parent)
{
     Targeting(self.id,Player_Parent,5,0.9);
}
if (global.bgScroll) y+=global.bgSpeedV;
if (round(direction)%10==0)
{
	image_angle=direction;
    if (direction<180)
    {
    	image_index=1;
    }else{
        image_index=0;   
    }
}





//Death
scr_EnemyDeath();
//Attack
var inst;
var i;
if instance_exists(Player_Parent)
{
    aim=point_direction(x,y,Player_Parent.x,Player_Parent.y);
    var xx;
    var yy;
    xx=x+lengthdir_x(27,image_angle);
    yy=y+lengthdir_y(27,image_angle);
    if (!fire) && (y<Camera_Main.y&&y>Camera_Main.y-160) &&(distance_to_object(Player_Parent)>30)
    {
        fire=true;
		if rapid<4+floor(global.enemyRank/2)
		{
			rapid++;
			for(i=0;i<3+floor(global.enemyRank/3);i++)
        	{
                inst=instance_create_depth(xx,yy,0,EB_Free4);
                inst.spd=3;
                inst.direction=image_angle;
				inst.master=id;
        	}
            alarm[4]=90-(global.enemyRank)+random_range(0,10);
		}
		alarm[0]=5;
    	
    }   
}
else
{
    aim=270;
} 
//Damage
if hp<damage
{
    image_blend=c_red;
    damage=hp;
    if bombHit=1{bombHit=0;}
}
else
{
        image_blend=c_white;
}
if cool>0
{
    cool-=1;
} 