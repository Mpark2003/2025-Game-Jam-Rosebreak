if mom>-1
{
    mom-=0.1;
}else{
    if image_angle>0
    {
        image_angle-=4;   
    }else{
        instance_create_depth(x,y,depth,Boss_Placeholer);
        instance_destroy();   
    }
}
y-=mom;
//image_index=global.playerType_1;