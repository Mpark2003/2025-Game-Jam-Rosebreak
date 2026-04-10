

if (global.bossHp>0)
{
    global.bossOn=true;
}else
{
    global.bossOn=false;
}

if global.enemyRank>10
{global.enemyRank=10;}
if global.enemyRank<0
{global.enemyRank=0;}


if global.bomberCharge>=100
{  
    if bombReady=0
    {
        bombReady=1;
        if instance_exists(Player_Parent){if (global.playerDamage!=1)
        {
            //instance_create_depth(Player_Parent.x,Player_Parent.y,100,Bomber_Appear);
            audio_play_sound(sfx_BombReady,0,false);
        }
        //audio_play_sound(voice_BomberReady,0,false);
    }}
}else{
    bombReady=0;
}
