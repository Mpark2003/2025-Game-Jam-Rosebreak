if counter=1
{
	other.hp-=0.5;
	instance_create_depth(x,y,0,Bullet_Canceled);
	instance_destroy();
}