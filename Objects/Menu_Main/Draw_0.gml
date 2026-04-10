draw_set_halign(fa_left)
draw_set_valign(fa_middle);
draw_set_font(f_HUD1);
draw_set_colour(c_white);

var m;
for (m=0;m<array_length(menu);m+=1)
{
    draw_text(x+30,y+(m*space),string(menu[m]));
}   
draw_sprite(sprite_index,-1, x+10, y+select*space);



draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(f_HUD1);
draw_set_color(c_white);draw_text(0,280,"DEMO v0.1");
draw_set_font(f_Small);
draw_set_font(f_HUD1);
var input_Up_K=scr_recognizeInput(global.g_ukey);
var input_Down_K=scr_recognizeInput(global.g_dkey);
var input_Select_K=scr_recognizeInput(global.g_akey);
draw_set_color(c_white);draw_text(0,292,input_Up_K+"/"+input_Down_K+":Move "+input_Select_K+":Select");
if gamepad_is_connected(0)
{draw_set_color(c_lime);draw_text(0,308,"Up/Down:Move (A):Select");}
else if gamepad_is_connected(4)
{draw_set_color(c_blue);draw_text(0,308,"Up/Down:Move (X):Select");}
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);