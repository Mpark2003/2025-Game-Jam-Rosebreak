/// @description 


if instance_exists(Player_Parent) && mov=1
    {
		if (!global.timeActive||global.bossOn)
        {
            move_towards_point(Player_Parent.x,Player_Parent.y,15);
			mode=1;
        }
        else if (distance_to_object(Player_Parent)<120)
        {
            move_towards_point(Player_Parent.x,Player_Parent.y,10);
			mode=1;
        }else
        {
            vspeed+=0.2;
        }
    }

if place_meeting(x,y,Player_Parent)
{
        var finalValue = value*(global.count+1);
        score+=finalValue;
        var inst=instance_create_depth(x,y,0,Point_Value);
            inst.value=finalValue;
            inst.increase=finalValue/10;
        global.count+=1; 
        if (global.timeActive)
        {

        }
        if global.enemyRank<10{global.enemyRank+=0.001;}

    if audio_is_playing(sfx_PointItem)
    {
        audio_stop_sound(sfx_PointItem);
    }
    audio_play_sound(sfx_PointItem,0,false);
    instance_destroy();
}