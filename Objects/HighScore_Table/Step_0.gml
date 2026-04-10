/// @description 
script_execute(Player1_Controls);
if (active)
{
    if (ukeyp)
    {
        if move>0
        {
            move-=1;
        }
        audio_play_sound(sfx_Cursor,0,false);
    }
    if (dkeyp)
    {
        if move<4
        {
            move+=1;
        }
        audio_play_sound(sfx_Cursor,0,false);
    }
    if (rkeyp)
    {
        table+=1;
        move=0;
        audio_play_sound(sfx_Cursor,0,false);
    }
    if (lkeyp)
    {
        table-=1;
        move=0;
        audio_play_sound(sfx_Cursor,0,false);
    }

    if (table<0)
        {
            table=menuMax;
        }
        if (table>menuMax)
        {
            table=0;
        }
    
    if (akeyp)
    {
        active=false;
        audio_stop_all();
        //audio_play_sound(sfx_Back,0,false);
        instance_create_depth(0,0,-1000,Black_Fade_Over);
    }
}
/*

if (akeyp)
{
    if audio_is_playing(trk_HSSet)
    {
        audio_stop_sound(trk_HSSet);
    }
    instance_create(0,0,Trans_Over);
    instance_destroy();
}