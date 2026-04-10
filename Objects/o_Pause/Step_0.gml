/// @description 
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
    if select<0
    {
        select=2;
    }
    if select>2
    {
        select=0;
    }
    if (akeyp)||(skeyp)
    {
        ok=1;
        alarm[2]=1;
    }
}