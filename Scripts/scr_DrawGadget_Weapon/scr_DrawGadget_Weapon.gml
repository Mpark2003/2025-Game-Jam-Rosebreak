function scr_DrawGadget_Weapon(){
        draw_set_color(c_black);
        var plus=round(global.gadgetMove*5);
        draw_set_alpha(0.75);
        draw_rectangle(25+plus,95,160+plus,146,false);
        draw_set_alpha(1);
        draw_rectangle_color(25+plus,95,160+plus,146,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        draw_set_font(f_Small);
        var nextLevel=global.shotLevel*4;
              
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
       
        draw_set_font(f_Small);
        draw_text_color(27+plus,94,"POWER",c_white,c_white,c_gray,c_gray,1);
        
        for(var i=0;i<5;i++)
        {
            draw_sprite(s_HUD_WeaponLevel,0,plus+27+(i*17),129);
        }
        for(var i=0;i<global.weaponLevel;i++)
        {
            draw_sprite(s_HUD_WeaponLevel,1,plus+27+(i*17),129);
        }
        draw_text_color(27+plus,135,"WEAPON LEVEL "+string(global.weaponLevel),c_lime,c_lime,c_green,c_green,1);
}