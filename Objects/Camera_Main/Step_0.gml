yPos+=global.bgSpeedV;
var lay_id,map_id,bg_id;
if layer_exists("Tiles_4")
{
    lay_id = layer_get_id("Tiles_4");
    map_id = layer_tilemap_get_id(lay_id);
    tilemap_y(map_id, yPos);
}
if layer_exists("Tiles_3")
{
    lay_id = layer_get_id("Tiles_3");
    map_id = layer_tilemap_get_id(lay_id);
    tilemap_y(map_id, yPos);
}
if layer_exists("Tiles_2")
{
    lay_id = layer_get_id("Tiles_2");
    map_id = layer_tilemap_get_id(lay_id);
    tilemap_y(map_id, yPos);
}
if layer_exists("Tiles_1")
{
    lay_id = layer_get_id("Tiles_1");
    map_id = layer_tilemap_get_id(lay_id);
    tilemap_y(map_id, yPos);
}
if layer_exists("Background_1")
{
    bg_id = layer_get_id("Background_1");
    layer_vspeed(bg_id,global.bgSpeedV/2);
}
script_execute(Player1_Controls);
if instance_exists(Player_Parent)
{
	if Player_Parent.image_alpha!=0
	{
		if (lkey) && (x-(sprite_width/2)>limitMin)
		{
			x-=Player_Parent.spd/scrollmulti;
		}

		if (rkey) && (x-(sprite_width/2)<limitMax-(sprite_width))
		{
			x+=Player_Parent.spd/scrollmulti;
		}
	}
}
/*







/*
camera_set_view_pos(view_camera[0],viewdist,y);

if instance_exists(player) //re-find the player's id if needed
{
    xpos=(player.x+oxpos)/scrollmulti;
        
    viewdist=xpos+((oxpos-view_wport[0]/2)*-1);
    
    var difX;
    difX=(viewdist-view_xport[0]);
                    
    if abs(difX)<1 view_xport[0]=viewdist; else view_xport[0]+=difX/10;
	
}
	



