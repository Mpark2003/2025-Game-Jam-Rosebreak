if instance_exists(Player_Parent){target=instance_nearest(x,y,Player_Parent);}
    var xx=Camera_Main.x-120;
    var yy=Camera_Main.y-160;
    if instance_exists(target)
    {
         Targeting(self.id,target,5,0.9);
         aim=point_direction(x,y,target.x,target.y);
    }else{aim=270;} 
var inst;
var i;
//Death
if (hp<=hpLimit)
{
	with (Enemy_Parent)
	{
		instance_create_depth(x,y,depth,Explosion_S_Silent);
		instance_destroy();	
	}
    inst=instance_create_depth(x,y,depth,Boss_Placeholer);
    inst.mom=mom;
    var increase=15;
    global.bossTime+=15;
    instance_create_depth(0,0,0,ScreenShakeA);
    scr_EnemyDeath_Boss();
	with (Enemy_Bullet_Parent)
	{
		instance_create_depth(x,y,depth,Bullet_Canceled);
		instance_destroy();	
	}
}
if global.bossTime<=0
{
    global.bossTime=20;
    global.bossHp=hpLimit;
    inst=instance_create_depth(x,y,depth,Boss_Placeholer);
    inst.mom=mom;
    instance_create_depth(x,y,0,Explosion_M);
    with(EnemyAttack_Parent)
    {
       instance_create_depth(x,y,0,Bullet_Canceled);
       instance_destroy();
    }
    instance_destroy();
}
    if move=1
    {
        if x>128
		{
			mom-=0.02;
		}else
		{
			mom+=0.02;
		}
        x+=mom/2;
    }

//Attack

if (mode==0)
{
    if (!fireA)
    {
        fireA=true;
        if rapid<7
        {
            rapid++;
            if (attack==0)
            {
                inst=instance_create_depth(x+17,y+30,0,EBLarge_Free2);
                inst.spd=3;
				inst.bulCol=1;
                inst.direction=270+(30-(15*rapid));
                for(i=0;i<3+global.stage;i++)
                {
                    inst=instance_create_depth(x+17,y+30,0,EB_Free3);
                    inst.spd=1.25+(i*0.5);
					inst.bulCol=1;
                    inst.direction=270+(30-(15*rapid));
                }
               
            }else{
                inst=instance_create_depth(x-17,y+30,0,EBLarge_Free2);
                inst.spd=3;
                inst.direction=270-(30-(15*rapid));
                for(i=0;i<3+global.stage;i++)
                {
                    inst=instance_create_depth(x-17,y+30,0,EB_Free3);
                    inst.spd=1.25+(i*0.5);
                    inst.direction=270-(30-(15*rapid));
                }
                
            }
            alarm[4]=80-(global.enemyRank*6);
        }
        alarm[0]=5;
    }   
}else if (mode==1)
{
    if (!fireA)
    {
        fireA=true;
        if rapid<15
        {
        	rapid++;
        }
        inst=instance_create_depth(x+4,y+40,0,EBLarge_Free2);
        inst.spd=1+rapid;
		inst.bulCol=2;
        inst.direction=270;
        inst=instance_create_depth(x-4,y+40,0,EBLarge_Free2);
        inst.spd=1+rapid;
		inst.bulCol=2;
        inst.direction=270;
        
        inst=instance_create_depth(x+17,y+30,0,EBLarge_Free2);
        inst.spd=1+rapid;
		inst.bulCol=2;
        inst.direction=265;
        inst=instance_create_depth(x-17,y+30,0,EBLarge_Free2);
        inst.spd=1+rapid;
		inst.bulCol=2;
        inst.direction=275;
        repeat(1+global.stage)
        {
            inst=instance_create_depth(x+4,y+40,0,EB_Free2);
            inst.spd=1;
            inst.direction=random(360);
            inst=instance_create_depth(x-4,y+40,0,EB_Free2);
            inst.spd=1;
            inst.direction=random(360);
        }
        if rapid<14{ alarm[0]=20-rapid;} else{alarm[0]=5; }
    }   
}else if (mode==2)
{
    if (!fireA)
    {
        fireA=true;

            inst=instance_create_depth(x-20,y-30,2,EnemyMissile_1V);
            inst.hspeed=random_range(0.5,-2);
            inst.vspeed=random_range(-2,-3);
            inst=instance_create_depth(x+20,y-30,2,EnemyMissile_1V);
            inst.hspeed=random_range(-0.5,2);
            inst.vspeed=random_range(-2,-3);
        

        alarm[0]=120-(global.enemyRank*5);
    }   
}

//Damage
if hp<damage
{
    if (hp>lowHp) {image_blend=c_mango;}
    else{image_blend=c_red;}
    damage=hp;
    if heavyHit=1{heavyHit=0;}
    if bombHit=1{bombHit=0;}
}
else
{
        image_blend=c_white;
}
global.bossHp=hp;
if cool>0
{
    cool-=1;
} 