function scr_DrawGadget_Stage(){
        draw_set_color(c_black);
        var plus=(global.gadgetMove*5);
        var stageName,col2;
        switch(global.stageRoute[global.stage-1])
        {
            case 0:  stageName="SKYLANDS"; col2=c_green;break;
            case 1:  stageName="CAPITAL"; col2=c_purple;break;
            case 2:  stageName="BATTLEFIELD"; col2=c_dkorange;break;
            case 3:  stageName="AQUATIC"; col2=c_cobalt;break;
            case 4:  stageName="FLEET"; col2=c_gray;break;
            case 5:  stageName="HEADQUARTERS"; col2=c_red;break;
            case 6:  stageName="DUEL"; col2=c_red;break;
            default: break;
        }
        draw_set_alpha(0.55);
        draw_rectangle_color(407-plus,5,562-plus,25,c_black,col2,col2,c_black,false);
        draw_set_alpha(0.20);
        draw_set_color(c_black);
        draw_rectangle(407-plus,5,562-plus,25,false);
        draw_set_alpha(1);
        draw_rectangle_color(407-plus,5,562-plus,25,c_dkgray,c_dkgray,c_gray,c_gray,true);
        
        draw_set_font(f_ScoreB);
        draw_text_color(410-plus,3,"MISSION 0"+string(global.stage),c_white,c_white,c_gray,c_gray,1);
        draw_set_font(f_Small);
        draw_text_color(410-plus,14,stageName,c_white,c_white,col2,col2,1);
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