/// @description Formation
if (global.timeActive&&!global.bossOn)
{
    var xx=camera_get_view_x(view_camera[0]);
    var yy=camera_get_view_y(view_camera[0]);
    var inst;
    global.noEscape=true;
	//This is a terrible implementation I will fix in the morning if work
	time += 1;
	if (time = 5){
	instance_create_depth(256,yy+10,0,Boss_Placeholer);
		if instance_exists(Spawner_Parent)
            {instance_destroy(Spawner_Parent);}
        if instance_exists(Enemy_Bullet_Parent)
            {
                with(Enemy_Bullet_Parent)
                {
                instance_create_depth(x,y,0,Bullet_Canceled);
                instance_destroy();
                }
            }
            if instance_exists(Enemy_Air_Parent)
            {
                 with(Enemy_Air_Parent)
                 {
                    instance_create_depth(x,y,0,Explosion_S_Silent);
                    instance_destroy();
                 }
            }
        timerOn=false;
	}
    switch(formation)
    {
        case 1:{  
            instance_create_depth(xx+40,yy-50,0,Enemy1A);
            instance_create_depth(xx+60,yy-50,0,Enemy1A);
            instance_create_depth(xx+80,yy-50,0,Enemy1A);
            instance_create_depth(xx+100,yy-50,0,Enemy1A);
            alarm[11]=10;
            break;
        }
        case 2:{  
            instance_create_depth(xx+200,yy-50,0,Enemy1A);
            instance_create_depth(xx+180,yy-50,0,Enemy1A);
            instance_create_depth(xx+160,yy-50,0,Enemy1A);
            instance_create_depth(xx+140,yy-50,0,Enemy1A);
            alarm[11]=15;
            break;
        }
        case 3:{  
            instance_create_depth(xx+40,yy-50,0,Enemy1A);
            instance_create_depth(xx+80,yy-50,0,Enemy1A);
            instance_create_depth(xx+120,yy-50,0,Enemy1A);
            instance_create_depth(xx+160,yy-50,0,Enemy1A);
            instance_create_depth(xx+200,yy-50,0,Enemy1A);
            alarm[11]=20;
            break;
        }
        case 4:{  
            instance_create_depth(xx+40,yy-50,0,Enemy1A);
            instance_create_depth(xx+60,yy-50,0,Enemy1A);
            instance_create_depth(xx+80,yy-50,0,Enemy1A);
            instance_create_depth(xx+100,yy-50,0,Enemy1A);
            instance_create_depth(xx+200,yy-50,0,Enemy1A);
            instance_create_depth(xx+180,yy-50,0,Enemy1A);
            instance_create_depth(xx+160,yy-50,0,Enemy1A);
            instance_create_depth(xx+140,yy-50,0,Enemy1A);
            alarm[11]=25;
            break;
        }
        case 5:{  
            instance_create_depth(0,0,0,E2A_Spawner1);
			instance_create_depth(0,0,0,E2A_Spawner1);
			instance_create_depth(0,0,0,E2A_Spawner1);
            alarm[11]=100;
            break;
        }case 6:{  
            instance_create_depth(xx+20,0,0,E1A_Spawner1);

            alarm[11]=50;
            break;
        }case 7:{  
            instance_create_depth(xx+0,0,0,E2A_Spawner1);
            alarm[11]=100;
            break;
        }
        default: break;
    }
    
}