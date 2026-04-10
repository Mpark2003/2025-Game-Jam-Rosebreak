
draw_set_halign(fa_left)
draw_set_valign(fa_middle);
draw_set_font(f_HUD1);
draw_set_colour(c_white);
draw_sprite(sprite_index,0, 20, y+select*space);
var m;
for (m=0;m<array_length(menu);m+=1)
{
    draw_text(x+10,y+(m*space),string(menu[m]));
}  

draw_set_colour(c_aqua);
draw_text(x+60,y+0*space,string(global.Volume_SFX));
draw_text(x+60,y+1*space,string(global.Volume_Music));
	switch(global.Option_Resolution)
	{
		case 0: draw_text(x+120,y+2*space,"1x"); break;
		case 1: draw_text(x+120,y+2*space,"1.5x"); break;
		case 2: draw_text(x+120,y+2*space,"2x"); break;
		case 3: draw_text(x+120,y+2*space,"3x"); break;
		case 4: draw_text(x+120,y+2*space,"Full"); break;
	}

    if global.Option_Acessibility=1
    {
        draw_text(x+160,y+3*space,"On"); 
    }
    else
    {
        draw_text(x+160,y+3*space,"Off"); 
    }

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(f_Small);
var input_Up_K=scr_recognizeInput(global.g_ukey);
var input_Down_K=scr_recognizeInput(global.g_dkey);
var input_Select_K=scr_recognizeInput(global.g_akey);
draw_set_color(c_white);draw_text(0,292,input_Up_K+"/"+input_Down_K+":Move "+input_Select_K+":Select");
if gamepad_is_connected(0)
{
    draw_set_color(c_lime);
    var input_Up_K=scr_recognizeInput(global.gX_ukey);
    var input_Down_K=scr_recognizeInput(global.gX_dkey);
    var input_Select_K=scr_recognizeInput(global.gX_akey);
    draw_set_color(c_white);draw_text(0,308,input_Up_K+"/"+input_Down_K+":Move "+input_Select_K+":Select");
}
else if gamepad_is_connected(4)
{draw_set_color(c_blue)
    draw_set_color(c_lime);
    var input_Up_K=scr_recognizeInput(global.gP_ukey);
    var input_Down_K=scr_recognizeInput(global.gP_dkey);
    var input_Select_K=scr_recognizeInput(global.gP_akey);
    draw_set_color(c_white);draw_text(0,292,input_Up_K+"/"+input_Down_K+":Move "+input_Select_K+":Select");
}
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);