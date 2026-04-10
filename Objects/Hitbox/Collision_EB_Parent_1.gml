/// @description Insert description here
// You can write your code in this editor
if other.counter=0
{
	if instance_exists(Player_Parent)
	{
		if global.overdriveStock>=1 && Player_Parent.shieldCharge>=100
		{
				instance_create_depth(x,y,-1,Hyper_Burst);
				global.overdriveStock-=1;
				audio_play_sound(sfx_Damaged,0,false);
				Player_Parent.shieldReady=false;
				Player_Parent.shieldCharge=0;	
				Player_Parent.hurt=2;
				Player_Parent.alarm[3]=120;
		}else if Player_Parent.hurt=0 && Player_Parent.dashCount<=0
		{
			instance_create_depth(x,y,-21,Explosion_Player);
			Player_Parent.x=240;
			Player_Parent.y=-8000;
			Player_Parent.hurt=1;
			instance_create_depth(0,0,0,ScreenShakeA);
			Player_Parent.superShot=0;
			Player_Parent.alarm[2]=90;
			if global.level>1
			{
				instance_create_depth(190,Camera_Main.y-120,-21,PowerItem_Vulcan_Pity);	
				instance_create_depth(130,Camera_Main.y-120,-21,PowerItem_Vulcan_Pity);	
			}else{
				instance_create_depth(160,Camera_Main.y-120,-21,PowerItem_Vulcan_Pity);	
			}
			global.level=0;
			global.rating/=2;
			if global.rating<1
			{
				global.rating=1;
			}
			global.rating=round(global.rating);
			
			instance_destroy(other);
		}
	}
}