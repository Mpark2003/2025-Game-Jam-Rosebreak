if ok=0
{
    if time>0
    {
        alarm[1]=90;
        time-=1;
        audio_play_sound(sfx_Cursor,1,false);
    } else
    {
        select=1;
        ok=1;
        Continue_Script();
    }
}

