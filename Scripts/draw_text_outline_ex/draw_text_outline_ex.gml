// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@function draw_text_outline_ex(x,y,str,outwidth,outcol,outfidelity,xscale,yscale,col1,col2)
function draw_text_outline_ex(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9){
	
//Created by Andrew McClustartkey http://nalgames.com/
//x,y: Coordinates to draw
//str: String to draw
//outwidth: Width of outline in pixels
//outcol: Colour of outline (main text draws with regular set colour)
//outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)
	var dto_dcol=draw_get_color();
	var dto_dalp=draw_get_alpha();
	draw_set_color(argument4);

	for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
	{
	    draw_text_transformed(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2,argument6,argument7,0);
	}

	draw_set_color(dto_dcol);

	draw_text_transformed_color(argument0,argument1,argument2,argument6,argument7,0,argument8,argument8,argument9,argument9,dto_dalp);
}