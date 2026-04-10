function scr_CheckDamage(){
    var inst;
    var xx=camera_get_view_x(view_camera[0])-120;
    var yy=camera_get_view_y(view_camera[0])-160;
    inst = other.id;
    if (inst != noone){if (instance_exists(inst)){  
        if (lockOnShot=0)
        {
            if (inst.hittable==1)&&(inst.y>yy)
            {
                scr_BulletHit(damage, sfx, effect, rpt, spy, ofs, crg, piercing,inst.id); 
            }
        }else{if (instance_exists(target)){  
            if (inst.hittable==1)&&(inst.y>yy)&&(inst.id=target.id)
            { 
                scr_BulletHit(damage, sfx, effect, rpt, spy, ofs, crg, piercing,inst.id); 
            } 
        }}
    }}
}