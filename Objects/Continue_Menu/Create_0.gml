menu[0]="Yes";
menu[1]="No";
time=9;
space=15;
select=0;
ok=0;
alarm[1]=90;
saveH=global.bgSpeedH;
saveV=global.bgSpeedV;
global.bgSpeedH=0;
global.bgSpeedV=0;

global.pause = true; //variable to know when the pause is active
surf_pause = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));//Create surface
gui_width = __view_get( e__VW.WView, 0 );
gui_height = __view_get( e__VW.HView, 0 );

surface_set_target(surf_pause);
draw_clear_alpha(c_black,0); // Clears surface.
draw_enable_alphablend(false);
draw_surface(application_surface,0,0);
draw_enable_alphablend(true);
surface_reset_target();

instance_deactivate_all(true); //deactivate all other instances
instance_activate_object(Main_Setup);
instance_activate_object(Options_Setup);
//instance_activate_object(Wall);
//audio_play_sound(trk_Continue,0,true);

