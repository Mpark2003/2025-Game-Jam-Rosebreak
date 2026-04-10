/// @description 
if global.stageRoute[global.stage]=1
{
    audio_play_sound(trk_Stage1,1,true);
}else if global.stage=2
{
    //audio_play_sound(trk_Stage2,0,true);
}else if global.stage=3
{
    //audio_play_sound(trk_Stage3,0,true);
}else if global.stage=4
{
   // audio_play_sound(trk_Stage4,0,true);
}else if global.stage=5
{
    //audio_play_sound(trk_Stage5,0,true);
}
instance_destroy();