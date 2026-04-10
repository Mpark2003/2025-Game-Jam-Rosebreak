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
    select=3;
}
if select>3
{
    select=0;
}
if (akeyp||keyboard_check_pressed(ord("Z")))
{
    audio_play_sound(sfx_Select,0,false);
    if select=0
    {
        instance_create_depth(x,y,depth,obj_InputSettings);
        Title_Logo.image_alpha=0.1;
    }
    else if select=1
    {
        instance_create_depth(x,y,depth,obj_InputSettings_Xbox);
        Title_Logo.image_alpha=0.1;
    }
    else if select=2
    {
        instance_create_depth(x,y,depth,obj_InputSettings_PS);
        Title_Logo.image_alpha=0.1;
    }
    else if select=3
    {
        instance_create_depth(x+30,y,depth,Menu_Options);
    }
    
    instance_destroy();
}
if (bkeyp||keyboard_check_pressed(ord("X")))
{
    instance_create_depth(x+30,y,depth,Menu_Options);
    instance_destroy();
}