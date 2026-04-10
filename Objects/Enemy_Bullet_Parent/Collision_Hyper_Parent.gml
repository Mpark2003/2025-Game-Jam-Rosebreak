/// @description 


    if (global.goldRush>0){instance_create_depth(x,y,0,Item_PointL);}
    else{instance_create_depth(x,y,0,Item_Point);}
    instance_create_depth(x,y,depth,Bullet_Canceled);
    instance_destroy();
