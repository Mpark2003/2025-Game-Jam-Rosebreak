/// @description 
if instance_exists(Boss_Parent)
{
    if startup=0 
    {   
        if ( global.hudMove<20)
        {
            global.hudMove+=(20.1-global.hudMove)/5;
        }else{
			global.hudMove=20;
		}
        if hp<Boss_Parent.hp
        {
            hp+=Boss_Parent.hp/50;
        }
        else
        {
            startup=1;
        }
    }else
    {
            hp=Boss_Parent.hp;
            if hp<=0
            {
                startup=1;
            }
    }
}
    if (global.bossHp<=0)
    {
        startup=2;
    }
    if startup=2
    {   
        if ( global.hudMove>0)
        {
            global.hudMove+=(-0.1-global.hudMove)/5;
        }else{
			global.hudMove=0;
			 instance_destroy();
		}
    }