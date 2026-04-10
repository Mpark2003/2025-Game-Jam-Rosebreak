repeat (irandom_range(6,13))
{
		instance_create_depth(x,y,-20,Shard_1);
}
repeat (irandom_range(6,13))
{
		instance_create_depth(x,y,-20,ShardC);
}
if audio_is_playing(sfx_ExplosionM)
	{
	    audio_stop_sound(sfx_ExplosionM);
	}
audio_play_sound(sfx_ExplosionM,0,false);	
