/// @description 
if (select==0)
{
    ok=2;
    alarm[1]=90;
}else if (select==1){
    audio_stop_all();
    audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
    instance_create_depth(0,0,-1000,Black_Fade_ReStart);
}else if (select==2){
    audio_stop_all();
    audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
    instance_create_depth(0,0,-1000,Black_Fade_Over);
}
