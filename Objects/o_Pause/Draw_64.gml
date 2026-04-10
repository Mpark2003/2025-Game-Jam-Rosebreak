display_set_gui_size(gui_width,gui_height);

var c_last = draw_get_color();

if ok=0
{
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_LargeB);
draw_set_colour(c_white);
draw_text_outline(120,120,"PAUSE",1,c_black,8);
draw_set_colour(c_white);

draw_set_font(f_Small);

draw_set_halign(fa_left);
draw_sprite(sprite_index,0, 0, 160+select*space);
var m;
    draw_set_font(f_HUD1);draw_set_colour(c_white);draw_set_halign(fa_left);
    for (m=0;m<array_length(menu);m+=1)
    {
        draw_text_outline(40,160+(m*space),string(menu[m]),1,c_black,4);
    }   
}else if ok=2
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(f_LargeB);
    draw_set_colour(c_white);
    draw_text_outline(120,120,"READY",1,c_black,8);
    draw_text_outline(120,160,string(alarm[1]),1,c_black,8);
    draw_set_colour(c_white);

    draw_set_font(f_Small);

    draw_set_halign(fa_left);

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
