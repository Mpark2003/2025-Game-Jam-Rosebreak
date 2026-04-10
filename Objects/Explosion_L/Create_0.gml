repeat (irandom_range(15,30))
{
		instance_create_depth(x,y,-20,Shard_2);
}
repeat (irandom_range(10,20))
{
		instance_create_depth(x,y,-20,ShardC);
}
audio_play_sound(sfx_ExplosionL,0,false);	
