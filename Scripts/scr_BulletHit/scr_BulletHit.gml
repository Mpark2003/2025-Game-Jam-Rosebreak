///@function scr_BulletHit(damage, sfx, effect, repeat, spray, offset, charge, piercing,target)
function scr_BulletHit(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7,argument8){
 var inst=argument8;
        inst.hp-=argument0;
        
        if (argument1!=0)
        {
            if audio_is_playing(argument1)
            {
            	audio_stop_sound(argument1);
            }
            audio_play_sound(argument1,0,false);
        }
        if (argument2!=0)
        {
            repeat(argument3)
            {
                var inst2=instance_create_depth(x,y,-2,argument2)
                if (argument4!=-1)
                {
                    inst2.dir=direction+random_range(-argument4,argument4)+argument5;
                    inst2.image_angle=direction;
                }
            }
        }
        if (argument6==1) {inst.hyperHit=1;}
        else if (argument6==2) {inst.hyperHit=2;}
        if (argument7==0)
        {
            instance_destroy();
        }
        else if (argument7==2)
        {
            pierce--; 
            if (pierce==0) instance_destroy();
        }
        else if (argument7==3)
        {
           if (inst.bounce==0)
            {  
                bounce=1;
                damage=0.2;
                direction=random(360);
            }
        }
           
        
        
    
}