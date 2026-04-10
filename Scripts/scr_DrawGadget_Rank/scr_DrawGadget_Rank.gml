function scr_DrawGadget_Rank(){
        draw_set_color(c_black);
        var plus=(global.gadgetMove*5);
        var col;
        if (global.enemyRank<10){col=c_black;}else{col=c_red;}
        
        draw_set_alpha(0.55);
        draw_rectangle_color(407-plus,30,562-plus,50,c_black,col,col,c_black,false);
        draw_set_alpha(0.20);
        draw_set_color(c_black);
        draw_rectangle(407-plus,30,562-plus,50,false);
        draw_set_alpha(1);
        draw_rectangle_color(407-plus,30,562-plus,50,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        draw_set_font(f_Small);
        draw_text_color(410-plus,40,"RANK",c_white,c_white,c_gray,c_gray,1);
        var rate=global.medalLevel+global.shotLevel+global.life;
        draw_text_color(500-plus,40,"RATE: +"+string(rate),c_red,c_red,c_maroon,c_maroon,1);
        var colRank=make_color_hsv(80-(8*global.enemyRank),255,255);
        if (global.enemyRank<10)
        {
            draw_sprite(s_HUD_RankBar,0,410-plus,33);
            draw_gui_bar(s_HUD_RankBar,1,global.enemyRank,10,410-plus,33,1,1,colRank,1,0);}
        else
        {
            draw_sprite(s_HUD_RankBar_Max,-1,410-plus,33);
        }
        /*
        draw_sprite(s_Item_Medal,global.medalLevel-1,45-plus,202);
        draw_text_color(68-plus,196,"TIER "+string(global.medalLevel),c_white,c_white,c_aqua,c_aqua,1);
        var maxMedal=(global.medalLevel*4);
        if (global.medalLevel<10)
        {
            draw_sprite(s_HUD_MedalLevel,0,68-plus,190);
            draw_gui_bar(s_HUD_MedalLevel,1,global.medalExp,maxMedal,68-plus,190,1,1,c_white,1,0);}
        else
        {
            draw_sprite(s_HUD_MedalLevel,2,68-plus,190);
        }
        */

}