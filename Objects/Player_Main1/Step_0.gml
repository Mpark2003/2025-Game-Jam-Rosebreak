/// @description Main
script_execute(Player1_Controls);
//Movement

var key_hor,key_vert,key_speed,dir;
if (image_alpha!=0)
{
    if (hurt!=1)
    {
        key_hor = rkey - lkey;
        key_vert = dkey - ukey;
        key_speed = min(1,abs(key_hor)+abs(key_vert));
    
        dir = point_direction(0,0,key_hor,key_vert);
        x += lengthdir_x(key_speed*spd,dir);
        y += lengthdir_y(key_speed*spd,dir);

        if x>(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-20
        {
            x=(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-20;
        }
        if x<(camera_get_view_x(view_camera[0]))+20
        {
            x=(camera_get_view_x(view_camera[0]))+20
        }
        if y>(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))-30
        {
            y=(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))-30;
        }
        if y<(camera_get_view_y(view_camera[0]))+20
        {
            y=(camera_get_view_y(view_camera[0]))+20;
        }

    }
}
scr_FollowSet();
//Animation
Player_Animation();
//Attack

switch (global.playerType)
{
    case 0: script_execute(scr_TypeA_Attack); break;
    default: break;
}