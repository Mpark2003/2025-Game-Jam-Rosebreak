display_set_gui_size(gui_width,gui_height);

var c_last = draw_get_color();

if ok=0
{
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_HUD2);
draw_set_colour(c_white);
draw_text_outline(120,80,"CONTINUE?",1,c_black,8);
draw_set_colour(c_white);
draw_set_font(f_LargeB);
draw_text_outline(120,150,string(time),2,c_red,8);
draw_set_font(f_HUD1);
draw_text_outline(120,300,"Credits "+string(global.credits),1,c_black,4);

draw_set_halign(fa_left);
draw_sprite(sprite_index,0, 100, 200+select*space);
var m;
    draw_set_font(f_HUD1);draw_set_colour(c_white);draw_set_halign(fa_left);
    for (m=0;m<array_length_1d(menu);m+=1)
    {
        draw_text_outline(130+space,200+(m*space),string(menu[m]),1,c_black,4);
    }   
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Draw semitransparent square
/*
draw_set_color(c_blue);
draw_set_alpha(0.5);
draw_rectangle(0,0,view_wview[0],view_hview[0],0);
draw_set_alpha(1);
draw_set_color(c_last)

/* */
/*  */
