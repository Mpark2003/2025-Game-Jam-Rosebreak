/// @description 
script_execute(General_Controls);

if (ukeyp)
{
    select-=1;
    audio_play_sound(sfx_Cursor,0,false);
}
if (dkeyp)
{
    select+=1;
    audio_play_sound(sfx_Cursor,0,false);
}
if select<0
{
    select=7;
}
if select>7
{
    select=0;
}
if (akeyp||keyboard_check_pressed(ord("Z")))
{
    if audio_is_playing(sfx_Select){audio_stop_sound(sfx_Select);}
    audio_play_sound(sfx_Select,0,false);
    Practice_Script();
}