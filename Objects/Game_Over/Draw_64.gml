display_set_gui_size(gui_width,gui_height);

var c_last = draw_get_color();
draw_set_font(f_LargeA);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text_outline(120,150,"GAME  OVER",2,c_black,4);
draw_set_halign(fa_left);
//Draw semitransparent square
/*
draw_set_color(c_blue);
draw_set_alpha(0.5);
draw_rectangle(0,0,view_wview[0],view_hview[0],0);
draw_set_alpha(1);
draw_set_color(c_last)

/* */
/*  */
