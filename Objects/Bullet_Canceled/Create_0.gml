depth=10;
if global.bulletCancel>=25//Erase
{
    global.bulletCancel-=25;
    var inst=instance_create_depth(x,y,0,Bonus_Info);
    inst.mode=4;
}