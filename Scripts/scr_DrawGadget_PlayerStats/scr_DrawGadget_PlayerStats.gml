function scr_DrawGadget_PlayerStats(){
        draw_set_color(c_black);
        var plus=round(global.gadgetMove*5);
        var col=c_white;var name=".";
        switch (global.playerType)
        {
            case 0: col=c_white; name="WHITE LION"break;
            case 1: col=c_red; name="RUBY BUSTER"break;
            case 2: col=c_mango; name="NOBLE RAY"break;
            case 3: col=c_blue; name="WENDIGO"break;
            default: break;
        }
        draw_set_alpha(0.20);
        draw_rectangle_color(25+plus,55,160+plus,120,c_black,c_black,col,col,false);
        draw_set_alpha(0.55);draw_set_color(c_black);
        draw_rectangle(25+plus,55,160+plus,120,false);
        draw_set_font(f_PowerUp);draw_set_alpha(0.75);draw_set_color(col);
        draw_set_halign(fa_right);draw_text(160+plus,110,name);draw_set_halign(fa_left);
        draw_set_alpha(1);draw_set_color(c_black);
        draw_rectangle_color(25+plus,55,160+plus,120,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        draw_set_alpha(0.75);
        draw_rectangle(5+plus,55,20+plus,277,false);
        draw_set_alpha(1);
        draw_rectangle_color(5+plus,55,20+plus,277,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        draw_set_font(f_Small);
        draw_text_color(31+plus,55,"REST",c_white,c_white,c_gray,c_gray,1);  
        for(var i=0;i<global.life-1;i++)
        {
            draw_sprite(s_HUD_LifeStockG,global.playerType,plus+37+(i*22),75);
        }
        
        draw_text_color(27+plus,88,"SP WEAPON",c_white,c_white,c_gray,c_gray,1);
        draw_sprite(s_HUD_SPWeapon_Cover,0,plus+26,99);
        draw_sprite(s_HUD_SPWeapon_Cover,0,plus+82,99);
        if (global.subStock=0)
        {
            draw_gui_bar(s_HUD_SPWeapon_Bar,0,global.subEnergy,100,31,101,1,1,c_white,1,0);
        }else if (global.subStock=1)
        {
            draw_sprite(s_HUD_SPWeapon_Cover,1,plus+26,99);
            draw_gui_bar(s_HUD_SPWeapon_Bar,1,global.subEnergy,100,87,101,1,1,c_white,1,0);
        }else if (global.subStock=2)
        {
            draw_sprite(s_HUD_SPWeapon_Cover,2,plus+26,99);
            draw_sprite(s_HUD_SPWeapon_Cover,2,plus+82,99);
        }
        
        draw_sprite(s_HUD_BomberMeter,0,9+plus,57);
        if global.bomberCharge<100
        {
            draw_gui_bar(s_HUD_BomberMeter,1,global.bomberCharge,100,9+plus,57,1,1,c_white,1,1);
        }
        else
        {
            draw_sprite(s_HUD_BomberMeter_Ready,-1,9+plus,57);
        }
}