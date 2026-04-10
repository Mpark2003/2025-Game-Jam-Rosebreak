/// @description 

    global.bgSpeedH=saveH;
	global.bgSpeedV=saveV;
        surface_free(surf_pause); //Clear surface
    draw_enable_alphablend(true);
    global.pause = false;
    instance_activate_all(); //Activate all the objects
    audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
    instance_destroy();
