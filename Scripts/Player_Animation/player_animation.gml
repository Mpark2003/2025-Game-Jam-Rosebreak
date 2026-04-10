// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Animation(){
	{
    switch (global.playerType)
    {
        case 0: sprite_index=s_Player_TypeA; break;
        case 1: sprite_index=s_Player_TypeB; break;
        case 2: sprite_index=s_Player_TypeC; break;
        case 3: sprite_index=s_Player_TypeD; break;
        default: break;
    }


    if (hurt>=2)
    {
        flash++;
    	if flash>3
    	{
    		flash=0;
    	} 
		if flash<2
		{
			//image_blend=c_white;
            image_alpha=1;
		}else 
		{
			//image_blend=c_red;
            image_alpha=0.25;
		} 
    }else if hurt=0{
       image_alpha=1; 
    }
	if (lkey && x>camera_get_view_x(view_camera[0])-160+15)
	{
		if animation<2
		{
			animation+=0.25;
		}
		if tilt<30
		{
			tilt+=3;	
		}
	}
	else 
	{
		if tilt>0
		{
			tilt-=3;
		}
		if animation>0
		{
			animation-=0.25;
		}
	}
	if (rkey && x<camera_get_view_x(view_camera[0])+160-15)
	{
		if animation>-2
		{
			animation-=0.25;
		}
		if tilt>-30
		{
			tilt-=3;	
		}
	}
	else 
	{
		if tilt<0
		{
			tilt+=3;
		}
		if animation<0
		{
			animation+=0.25;
		}
	}
}

if animation>=2{image_index=2;}
if animation>0&&animation<2{image_index=1;}
if animation=0{image_index=0;}
if animation<0&&animation>-2{image_index=3;}
if animation<=-2{image_index=4;}

}