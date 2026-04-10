repeat (choose(10,11,12))
{
		instance_create_depth(x,y,-20,Shard_1);
}
repeat (choose(5,6))
{
		instance_create_depth(x,y,-20,ShardB);
}
audio_play_sound(sfx_PlayerDeath,0,false);	
