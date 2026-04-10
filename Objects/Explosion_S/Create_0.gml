repeat (choose(3,4,5))
{
		instance_create_depth(x,y,-20,Shard_1);
}
if audio_is_playing(sfx_ExplosionS)
	{
	    audio_stop_sound(sfx_ExplosionS);
	}
	audio_play_sound(sfx_ExplosionS,0,false);
	
