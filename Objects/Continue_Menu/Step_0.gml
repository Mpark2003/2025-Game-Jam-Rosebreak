/// @description 
script_execute(Player1_Controls);
if ok=0
{
    if (ukeyp)
    {
        select-=1;
    }
    if (dkeyp)
    {
        select+=1;
    }
    if select<0
    {
        select=1;
    }
    if select>1
    {
        select=0;
    }
    if (akeyp)
    {
        ok=1;
		//audio_stop_sound(trk_Continue);
        alarm[2]=1;
    }
}