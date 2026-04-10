function scr_DrawHud_Medal(){
        
 
        draw_set_font(f_Medium);
        draw_set_alpha(0.75);
        draw_sprite(s_Item_Point,-1,15,60);
        draw_set_alpha(1);
        draw_set_color(c_mango);
        draw_text_outline(5,50,string(global.count),1,c_black,4);
        draw_set_color(c_white);
        
        
        
}