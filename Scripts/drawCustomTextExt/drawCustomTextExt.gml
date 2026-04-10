// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_text_custom_ext(x,y,string,sprite,xscale,yscale,color,alpha,dir){
	///@function	draw_text_custom_ext(x,y,string,sprite,xscale,yscale,color,alpha,dir);

	var _sprite,_fontLayout, _x,_y,_string,i,_offsetX,_offsetY,_xscale,_yscale,_color,_alpha,_dir;
	_x=argument0;
	_y=argument1;
	_string=argument2;
	_sprite=argument3;
	_xscale=argument4;
	_yscale=argument5;
	_color=argument6;
	_alpha=argument7;
	_dir=argument8;
	_fontLayout="abcdefghijklmnopqrstuvwxyz0123456789<>|-,'~:()[]_ .?!@^";
	
	if (!variable_global_exists("_charMap")){
		for (i=0;i<=255;i+=1)
			global._charMap[i]=-1;
		
		for (i=1;i<=string_length(_fontLayout);i+=1)
			global._charMap[ord(string_char_at(_fontLayout,i))]=i;
		
	}
	
	_offsetX=0;
	_offsetY=0;
    if _dir=1
    {
    	for (i=1;i<=string_length(_string);i+=1)
    	{
    		var c;
    		c = ord(string_char_at(_string,i));
		
    		if (global._charMap[c] != -1)
    		{
                draw_sprite_ext(_sprite,global._charMap[c]-1,_x+_offsetX+1,_y+_offsetY+1,1,1,0,c_black,1);
    			draw_sprite_ext(_sprite,global._charMap[c]-1,_x+_offsetX,_y+_offsetY,_xscale,_yscale,0,_color,_alpha);
    		}
        
    		_offsetX+=sprite_get_width(_sprite);
		
    		if (string_char_at(_string,i)=="#")
    		{
    			_offsetX=0;
    			_offsetY+=sprite_get_height(_sprite);
    		}
    	}
    }else{
        for (i=string_length(_string);i>=1;i-=1)
    	{
    		var c;
    		c = ord(string_char_at(_string,i));
		
    		if (global._charMap[c] != -1)
    		{
                draw_sprite_ext(_sprite,global._charMap[c]-1,_x+_offsetX+1,_y+_offsetY+1,1,1,0,c_black,1);
    			draw_sprite_ext(_sprite,global._charMap[c]-1,_x+_offsetX,_y+_offsetY,_xscale,_yscale,0,_color,_alpha);
    		}
        
    		_offsetX-=sprite_get_width(_sprite);
		
    		if (string_char_at(_string,i)=="#")
    		{
    			_offsetX=0;
    			_offsetY+=sprite_get_height(_sprite);
    		}
    	}
    }
}