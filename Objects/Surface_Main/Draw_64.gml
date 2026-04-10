/// @description 

draw_clear_alpha(c_black,0);
if !(surface_exists(main_surface))
{
    main_surface=surface_create(1280,640);
}
if (!surface_exists(game_surface)||!surface_exists(view_surface_id[0]))
{
    game_surface=surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
    view_surface_id[0]=game_surface;
}
if global.gadgetSet_Active=1
{
    if (surface_exists(main_surface))
    {
        draw_set_valign(fa_right);
        draw_surface_ext(main_surface,-164,0,1,1,0,c_white,1);
    }
}
if (surface_exists(game_surface)||surface_exists(view_surface_id[0]))
{
    surface_set_target(view_surface_id[0]);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle(0,0,surface_get_width(view_surface_id[0]),surface_get_height(view_surface_id[0]),false);
    gpu_set_colorwriteenable(true, true, true, true);
    var surfX=global.surfaceSet_Xpos+global.screenshakeX;
    var surfY=global.surfaceSet_Ypos+global.screenshakeY;
    surface_reset_target(); 
    draw_surface_ext(view_surface_id[0],surfX,surfY,global.surfaceSet_Xscale,global.surfaceSet_Yscale,global.surfaceSet_Rotation,c_white,1);
    surface_resize(view_surface_id[0],240,320);
}