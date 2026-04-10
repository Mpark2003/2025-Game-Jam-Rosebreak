/// @description Insert description here

var xx=camera_get_view_x(view_camera[0])-120;
var yy=camera_get_view_y(view_camera[0])-160;
if x<xx
{
    instance_destroy();
}
if x>xx+240
{
    instance_destroy();
}
if y>yy+320
{
    instance_destroy();
}