function scr_EnemyDeath(){
    var xx=x+random_range(-sprite_width/2,sprite_width/2);
var yy=y+random_range(-sprite_height/2,sprite_height/2);
if hp<=0
{
    instance_create_depth(x,y,0,Explosion_S);
    score+=value;
    if item>0
    {
        //if (global.timeActive){global.combo+=item;}
        if global.enemyRank<12{global.enemyRank+=item/500;}
        global.enemyKill+=1;
    
        if bombHit=1
        {
            repeat(item*3){
                xx=x+random_range(-sprite_width/2,sprite_width/2);
                yy=y+random_range(-sprite_height/2,sprite_height/2);
                instance_create_depth(xx,yy,0,Item_Point);
                //if (global.goldRush>0){instance_create_depth(xx,yy,0,Item_PointL);}
                //else{instance_create_depth(xx,yy,0,Item_Point);}
            }
        }else{
            repeat(item){
                xx=x+random_range(-sprite_width/2,sprite_width/2);
                yy=y+random_range(-sprite_height/2,sprite_height/2);
                instance_create_depth(xx,yy,0,Item_Point);
                //if (global.goldRush>0){instance_create_depth(xx,yy,0,Item_PointL);}
                //else{instance_create_depth(xx,yy,0,Item_Point);}
            }
        }
    }
    instance_destroy();
    //Bullet Cancel
    if heavyHit=1
    {
        with(Enemy_Bullet_Parent)
        {

        }

    }
}

}