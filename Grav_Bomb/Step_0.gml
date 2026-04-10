/// @description 
event_inherited();
Player1_Controls();
if sze2>1{sze2-=0.2;}
if ok=2
{
    if sze>0{sze-=0.1;active=0;}
    else{
        instance_destroy();  
    }
     
}
if ok=0//Charge_Orb
{
    if sze<1{sze+=0.1;}
    else
    {
        ok=1;
        //audio_play_sound(sfx_Bomb_Launch,0,false);
        alarm[0]=120;
    }
}
else if ok=1
{
    
    
    
    with(Enemy_Parent)
    {
        if (distance_to_object(other)<50*other.sze)
        {
            with(other)
            {
                var inst = other.id;
                if (inst != noone){if (instance_exists(inst)){  
                    if (inst.hittable==true)&&(alarm[0]%20=0)
                    {
                        var xsave=x;
                        var ysave=y;
                        x=inst.x;
                        y=inst.y;
                        scr_BulletHit(damage, sfx, effect, rpt, spy, ofs, crg, piercing,inst.id); 
                        x=xsave;
                        y=ysave;
                    }}
                }
            }
        }
    }
}
image_xscale=sze;
image_yscale=sze;