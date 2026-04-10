/// @description 
if (global.timeActive)&&instance_exists(Player_Parent)
{
    if (place_meeting(x,y,Player_Parent))
    {
        if (Player_Parent.inv==0&&Player_Parent.dashinv==0)
        {
                scr_PlayerDamage(1,2,0,0,false);
                instance_destroy();
        }else if (Player_Parent.dashinv>=2)
        {
            instance_destroy();
        }
    }
}