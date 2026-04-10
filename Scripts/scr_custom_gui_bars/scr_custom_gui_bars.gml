/// @function draw_gui_bar(sprite,subImg,currentStat,maxStat,x,y,xScale,yScale,col,alpha,direction);
/// @description Draw a custom GUI bar
/// @param {id} sprite The sprite to use for the GUI bar
/// @param {real} subImg The image index of the sprite to use for the GUI bar
/// @param {real} currentStat The current value of the stat (e.g. what the health/experience/stamina is at the moment)
/// @param {real} maxStat The maximum value the stat can go to (e.g. full health / experience for next level reached)
/// @param {real} x The x coordinate to draw the GUI bar
/// @param {real} y The y cooridnate to draw the GUI bar
/// @param {real} xScale The horizontal scale to use for the GUI bar
/// @param {real} yScale The vertical scale to use for the GUI bar
/// @param {real} col The blend colour to use for the GUI bar (c_white for normal)
/// @param {real} alpha The image alpha to draw the GUI bar
/// @param {real} direction How the GUI bar is drawn from empty<full: 0=left<right, 1=bottom<top, 2=right<left, 3=top<bottom
function draw_gui_bar(_sprite,_subImg,_currentStat,_maxStat,_x,_y,_xScale,_yScale,_col,_alpha,_direction) {
	var _width = sprite_get_width(_sprite);
	var _height = sprite_get_height(_sprite);
	var _percent = _currentStat/_maxStat;
	switch (_direction) {
		case 0:
			draw_sprite_part_ext(_sprite,_subImg,0,0,_width*_percent,_height,_x,_y,_xScale,_yScale,_col,_alpha);
		break;
		case 1:
			var _drawHeight = _height*_percent;
			var _top = _height-_drawHeight;
			draw_sprite_part_ext(_sprite,_subImg,0,_top,_width,_drawHeight,_x,_y+_top,_xScale,_yScale,_col,_alpha);
		break;
		case 2:
			var _left = _width-(_width*_percent)
			draw_sprite_part_ext(_sprite,_subImg,_left,0,_width,_height,_x+_left,_y,_xScale,_yScale,_col,_alpha);
		break;
		case 3:
			draw_sprite_part_ext(_sprite,_subImg,0,0,_width,_height*_percent,_x,_y,_xScale,_yScale,_col,_alpha);
		break;
	}
}