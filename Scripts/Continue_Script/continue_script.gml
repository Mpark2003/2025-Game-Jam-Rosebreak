// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Continue_Script(){
	switch (select)
{
    case 0:
    {
        if global.credits>0
        {
            //audio_stop_sound(trk_Continue);
            surface_free(surf_pause); //Clear surface
            draw_enable_alphablend(true);
            global.pause = false;
            instance_activate_all(); //Activate all the objects
            global.continues+=1;
            global.credits-=1;
            global.life=3;
            score=0;
            global.scoreMillion=0;
            global.scoreBillion=0;
            score+=global.continues;
            global.count = 0;
            instance_create_depth(camera_get_view_x(view_camera[0])+45,camera_get_view_y(view_camera[0])+360,0,Player1_Spawn);
	        Player_Parent.alarm[2]=180;
            audio_group_set_gain(AG_SFX,0.1*global.Volume_SFX,0);
            audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
            if instance_exists(Enemy_Bullet_Parent)
            {
                with(Enemy_Bullet_Parent)
                {
                    instance_create_depth(x,y,0,Bullet_Canceled);
                    instance_destroy();
                }
            }
        
            if instance_exists(Enemy_Parent_Threat)
            {
                with(Enemy_Parent_Threat)
                {
                    instance_create_depth(x,y,0,Bullet_Canceled);
                    instance_destroy();
                }
            }
            if instance_exists(Enemy_Parent)
                {
                    with(Enemy_Parent)
                    {
                        fire=1;
                        alarm[0]=90;
                    }
            }
            /*
            if instance_exists(Boss_Parent)
            {
                with(Boss_Parent)
                {
                    fireA=1;
                    fireB=1;
                    fireC=1;
                    alarm[0]=90;
                    alarm[1]=90;
                    alarm[2]=90;
                }
            }
            */
            instance_destroy();
        }
        break;
    }
    case 1:
    {
        audio_stop_all();
        
        audio_group_set_gain(AG_SFX,0.1*global.Volume_SFX,0);
        audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
            instance_create_depth(0,0,-1000,Game_Over);
        break;
    }
}
}