depth=-15
if !instance_exists(Player_Parent)
{
	instance_destroy();
}
effect=0;
save=sprite_index;
image_index=2;
sprite_index=s_ESpark;
alarm[0]=1;
spd=speed;
invoked=0;
point=false;
piercing=false;
//counter=0;