/// @description 
var gp_num=gamepad_get_device_count();
var num=0;
for (var i = 0; i < gp_num; i++;)
{
    if gamepad_is_connected(i)
    {
        num++;
    }
}
global.controllersIn=num;