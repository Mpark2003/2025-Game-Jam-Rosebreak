/// @description Int
event_inherited();
hp=2000;
hpLimit=900;
lowHp=hpLimit+(hpLimit/5);

global.bossHpMax=hp;
global.bossHp=global.bossHpMax;
global.bossHpLimit=hpLimit;
global.bossPhase=0;
global.bossActive=true;
global.bossName="TF2.CoconutAAA";
global.comboGauge=100;
global.timeActive=true;
global.bossTime=60;
global.bossPhaseLimit[0] = 900;

depth=1;
mom=2;
move=1;
heavyHit=0;
bombHit=0;
value=3000;
item=20;
mode=0
hitFrom=1;
attack=choose(0,1);
rapid=0;
shoot=false;
fireA=true;
fireB=true;
fireC=true;

alarm[0]=30;
alarm[1]=30;
alarm[2]=30;

/*
damage=hp;
invoked=0;
invoke=0;
hittable=1;
mode=0;
alarm[3]=400;
*/

image_index=0;
image_speed=1;
instance_create_depth(x,y,-10,Boss_Hp_bar);
target=noone;
lockDamage=0;
cool=0;
locked=0;
var lock;