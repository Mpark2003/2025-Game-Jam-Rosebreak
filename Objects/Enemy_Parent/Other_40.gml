/// @description Insert description here
// You can write your code in this editor
if instance_exists(Camera_Main)
{
    if y>Camera_Main.y {instance_destroy();}
}else{
    instance_destroy();
}
if move=2{instance_destroy();}