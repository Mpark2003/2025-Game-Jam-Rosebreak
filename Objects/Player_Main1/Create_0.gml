/// @description Initialize  
depth=-10;
image_speed=0;
flash=0;
fire=0;
fireB=0;
fireC=0;
bombCharge=0;
energyLevel=0;
hyper=0;
optionSet=0;
chargeReady=false;
spd=3;
img=0;
mom=0;
hurt=4;
chargeRate=1;
switch (global.playerType)
{
    case 0: sprite_index=s_Player_TypeA; chargeRate=0.475;break;
    default: break;
}
alarm[2]=120;
var inst=instance_create_depth(x,y,-105,Hitbox);
    inst.master=id;
    /*
if (global.playerType=1)
{
    repeat(4)
    {
        var inst=instance_create_depth(x,y,depth+1,Player_Option);
            inst.master=id;
    }
}
*/
hold=0;
ready=0;
charge=0;
mode=0;

aim=0;aimB=0;
spin=2;
spinB=0;
tilt=0;
spread=0;
rapid=0;
rapidB=0;
animation=0;

shot=0;
shotB=0;
playerSet=1;
mode=0;

shotAnimation=0;
animationMode=0;

for (var i = 39; i > 0; i--;)
{
    prevX[i] = x;
    prevY[i] = y;
}