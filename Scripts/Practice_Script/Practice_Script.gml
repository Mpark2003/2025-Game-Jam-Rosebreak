function Practice_Script(){
    switch (select)
{
    case 0:
    {
        var inst;
        inst=instance_create_depth(0,0,0,Transitioner_BeginPractice);
        inst.setStage=setStage;
        inst.setRank=setRank;
        inst.setType=setType;
        inst.setShot=setShot;
        inst.setWeapon=setWeapon;
        inst.setLife=setLife;
        instance_destroy();
        break;
    }
    case 1:
    {
        if setStage<6
        {
            setStage+=1;
        }
        else
        {
            setStage=0;
        }
        break;
    }

    case 2:
    {
        if setRank<10
        {
            setRank+=1;
        }
        else
        {
            setRank=0;
        }
        break;
    }
    
    case 3:
    {
        if setType<3
        {
            setType+=1;
        }
        else
        {
            setType=0;
        }
        break;
    }
    case 4:
    {
        if setShot<5
        {
            setShot+=1;
        }
        else
        {
            setShot=1;
        }
        break;
    }
    case 5:
    {
        if setWeapon<4
        {
            setWeapon+=1;
        }
        else
        {
            setWeapon=0;
        }
        break;
    }
    case 6:
    {
        if setLife<5
        {
            setLife+=1;
        }
        else
        {
            setLife=1;
        }
        break;
    }
    case 7:
    {
        instance_create_depth(x,y,0,Menu_Main);
        instance_destroy();
        break;
    }
    default: break;
}
}