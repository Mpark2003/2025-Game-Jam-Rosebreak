function scr_DrawGadget_Medal(){
        draw_set_color(c_black);
        var plus=round(global.gadgetMove*5);
        draw_set_alpha(0.75);
        draw_rectangle(25+plus,175,160+plus,234,false);
        draw_set_alpha(1);
        draw_rectangle_color(25+plus,175,160+plus,234,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        
        draw_set_alpha(0.5);
        draw_sprite(s_Item_Medal_Silver,global.medalLevel-1,50+plus,202);
        draw_set_alpha(1);
        draw_set_font(f_Small);
        draw_text_color(31+plus,175,"TECHNICAL BONUS",c_white,c_white,c_gray,c_gray,1);
        var maxMedal=2+(global.medalLevel);
        var extendnext=75+(global.extend*25);
        if (global.medalLevel<10)
        {
            draw_sprite(s_HUD_MedalLevel,0,68+plus,190);
            draw_gui_bar(s_HUD_MedalLevel,1,global.medalExp,maxMedal,68+plus,190,1,1,c_white,1,0);
            draw_text_color(68+plus,196,"MEDAL LEVEL "+string(global.medalLevel),c_white,c_white,c_aqua,c_aqua,1);
        }
        else
        {
            draw_sprite(s_HUD_MedalLevel,2,68+plus,190);
            draw_text_color(68+plus,196,"LEVEL MAX",c_white,c_white,c_aqua,c_aqua,1);
        }
        draw_text_color(28+plus,206,"NEXT EXTEND",c_white,c_white,c_gray,c_gray,1);
        draw_set_font(f_Medium);
        draw_text_color(28+plus,211,string(extendnext-global.extendExp),c_white,c_white,c_ltgray,c_ltgray,1);

}