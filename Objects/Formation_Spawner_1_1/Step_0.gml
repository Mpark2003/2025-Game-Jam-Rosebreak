/// @description 
if (global.timeActive&&!global.bossOn)
{
    if (instance_number(Enemy_Air_Parent)==0 && !instance_exists(Spawner_Parent))
    {
        if (bonus==0)
        {
            bonus=1;
            if (global.noEscape)
            {
                global.formationBonus++;
            }
            if formation>=formMax
            {
                if global.formRank<5{global.formRank++;}
                formation=formMin;
            }else{
                formation+=1;
            }
            alarm[0]=10;
        }
    }
}
