event_inherited();
visible=true;
damage=1;
piercing=1;
active=1;
type=0;
ok=0;
crg=1;
sze2=2;
sze=1;
mode=0;
bombPower=24;
sze=bombPower/100;
launchDir=90;
plus=0;
audio_play_sound(sfx_BomberA,0,false);
with (Enemy_Bullet_Parent)
{
		instance_create_depth(x,y,0,Item_Point);
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();
}
for (var i=0;i<3;i++)
{
    lightningDir1[i]=random(360);  
    lightningDir2[i]=random(360);  
}
image_alpha=0.75;
alarm[2]=1;
/*
hitByAttack = ds_list_create();