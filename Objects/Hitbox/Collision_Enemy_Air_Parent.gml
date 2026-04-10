/// @description 
 if instance_exists(master)
	{
        if  (master.hurt==0)
        {
        	master.hurt=1;
            master.image_alpha=0;
            global.miss+=1;
            global.playerDamage=1;
        	alarm[0]=90;
        	global.enemyRank=round(global.enemyRank/2);
        	if global.enemyRank<0
        	{
        		global.enemyRank=0;
        	}
            master.x=240;
            master.y=9000;
            global.bomberCharge=100;
            //instance_create_depth(x,y,depth,Player_Death);
        	with(EnemyAttack_Parent)
            {
                instance_create_depth(x,y,depth,Bullet_Canceled);
                instance_destroy(); 
            }
         }
    }