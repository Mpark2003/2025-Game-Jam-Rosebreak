function scr_DrawHud_Stage(){
        var colRank=make_color_hsv(80-(8*global.enemyRank),255,255);
        var stageName,col2;
        switch(global.stageRoute[global.stage-1])
        {
            case 0:  stageName="SKYLANDS"; break;
            case 1:  stageName="CAPITAL"; break;
            case 2:  stageName="BATTLEFIELD"; break;
            case 3:  stageName="AQUATIC"; break;
            case 4:  stageName="FLEET"; break;
            case 5:  stageName="HEADQUARTERS"; break;
            case 6:  stageName="DUEL"; break;
            default: break;
        }
        
        //draw_text_custom(95,8,"stage"+string(global.stage),s_HUD_Font);
        draw_set_font(f_Small);
        draw_set_halign(fa_center);
        draw_text_color(120,1,stageName,c_white,c_white,c_gray,c_gray,1);
        draw_set_halign(fa_left);
        if (global.enemyRank<10)
        {
            draw_sprite(s_HUD_RankBarMini,0,45,0);
            draw_gui_bar(s_HUD_RankBarMini,1,global.enemyRank,10,45,0,1,1,colRank,1,0);}
        else
        {
            draw_sprite(s_HUD_RankBarMini_Max,-1,45,0);
        }
}