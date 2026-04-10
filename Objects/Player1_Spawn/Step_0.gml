mom-=0.2;

y-=mom;
//image_index=global.playerType_1;
if mom<=-4.8
{
    if instance_exists(Player_Parent)
    {
        Player_Parent.x=x;
        Player_Parent.y=y;
		Player_Parent.image_alpha=1;
		Player_Parent.hurt=2;
		instance_destroy();
    }
    else
    {
		instance_create_depth(x,y,0,Player_Main1);
		instance_destroy();
    }
}

