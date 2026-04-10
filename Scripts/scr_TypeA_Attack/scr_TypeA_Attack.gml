function scr_TypeA_Attack(){
    var inst;
    if (hurt!=1&&hurt!=3)
    {
        if (akey)
        {
            if (fire==0)
            {
                fire=1;
                scr_Shot_MainA();
            }
        }

        if (xkeyp)&&global.bomberCharge>=100
        {
        	instance_create_depth(0,0,0,ScreenShakeA);
            bombCharge=0;
            hurt=3;
            global.bomberCharge=0;
        }
    }
   

    if (global.bomberCharge>=200){
    	inst=instance_create_depth(x,y,depth+1,Player_Shadow);
    	inst.sprite_index=sprite_index;
    	inst.image_index=image_index;
    	inst.direction=270;
    	inst.speed=2;
    }
    if (global.gameActive)
    {
        if (bkey)
        {
            mode=1;
        }else{
            mode=0;
        }
        if mode=0{aim=0;spd=4;}
        if mode=1{aim=6;spd=2;}
    }
     
}