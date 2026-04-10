/// @description 
if (global.gameActive&&global.stageActive)
{
    if global.enemyRank<10
    {global.enemyRank+=0.01*global.stage;}
}
if rankRate<40
{
    alarm[1]=50-(rankRate);
}else{
    alarm[1]=10;
}