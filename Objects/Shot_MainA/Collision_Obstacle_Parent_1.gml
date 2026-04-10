if other.y>Camera_Main.y-180{other.hp-=1;}
if instance_exists(master)
{
	if master.shot>0{master.shot--;}
}
instance_create_depth(x,y,-2,Vulcan_Impact);
instance_destroy();