/// @description 
global.life--;
if global.life>0
{
	instance_create_depth(camera_get_view_x(view_camera[0])+45,camera_get_view_y(view_camera[0])+360,0,Player1_Spawn);
	Player_Parent.alarm[2]=180;
}else{
    instance_create_depth(0,0,0,Continue_Menu);
}