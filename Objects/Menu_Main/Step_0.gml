script_execute(Player1_Controls);
if ok=0
{
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
    if (select<0)
    {
        select=menuMax;
    }
    if (select>menuMax)
    {
        select=0;
    }
    if (akeyp)||(skeyp)||keyboard_check_pressed(global.g_akey)
    {
        audio_play_sound(sfx_Select,0,false);
        Menu_Script();
		instance_destroy();
        ok=1;
    }
}