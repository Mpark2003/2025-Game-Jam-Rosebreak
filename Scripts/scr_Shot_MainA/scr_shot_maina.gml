function scr_Shot_MainA(){
    var inst;
    var yy=camera_get_view_y(view_camera[0]);
    var shotSound=sfx_Shot_A1;
        if (global.shotLevel==1)
        {
            if (rapid<10)
            {
                inst=instance_create_depth(x+8,y-10,0,Shot_MainA);
                inst.direction=90;
                inst.speed=11+global.shotLevel;
                inst.img=global.shotLevel;
                inst.master=id;
                inst=instance_create_depth(x-8,y-10,0,Shot_MainA);
                inst.direction=90;
                inst.speed=11+global.shotLevel;
                inst.img=global.shotLevel;
                inst.master=id;
                if audio_is_playing(shotSound){audio_stop_sound(shotSound);}
                if (y<yy+318){audio_play_sound(shotSound,0,false);} 
            } 
            alarm[0]=3;
        }
}