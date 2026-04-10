function scr_DrawHighScores_Basic(){
    
    for (var i=1;i<11;i++)
    {
        var set=i-1;
        var col1,col2;
        
        if global.HS_B_Color[i]=0
        {
            var pal=global.HS_B_Type[i]+1;
        }else{
            var pal=global.HS_B_Color[i]+3;
        }
        
        //Type
        pal_swap_set(s_PlayerShips_Palletes,pal,false);    
        draw_sprite(s_Ships,global.HS_B_Type[i], 230,26+((50*set)-(50*move)));
        pal_swap_reset();
        
        draw_set_alpha(0.8);
        pal_swap_set(s_PlayerShips_Palletes,pal,false);    
        draw_sprite(s_HS_Back,global.HS_B_Style[i], 0,10+((50*set)-(50*move)));
        pal_swap_reset();
        draw_set_alpha(1);
        //Rank
        switch (set)
        {
            case 0: col1=c_yellow;col2=c_mango; break;
            case 1: col1=c_aqua;col2=c_cobalt; break;
            case 2: col1=c_mango;col2=c_dkorange; break;
            default: col1=c_white;col2=c_gray; break;
        }
        draw_set_font(f_LargeC);draw_set_colour(c_silver);
        draw_text_color(10,19+((50*set)-(50*move)),string(set+1),col1,col1,col2,col2,1);
        draw_set_font(f_HUD1);draw_set_colour(c_white);
        //Score
        draw_set_color(c_white);
        var r =  global.HS_B_Score[i];
        var rm = global.HS_B_ScoreM[i];
        var rb = global.HS_B_ScoreB[i];
        draw_set_halign(fa_right);
        if global.HS_B_Continues[i]=0
        {
            draw_text_outline(175,12+((50*set)-(50*move)),scr_DrawScore_Table(r,rm,rb),1,c_black,4);
        }else{
            draw_text_outline(175,12+((50*set)-(50*move)),scr_DrawScore_Table(r,rm,rb),1,c_maroon,4);
        }
        
        draw_set_halign(fa_left);
        //Stage
        draw_set_font(f_Score);draw_text(53,36+((50*set)-(50*move)),"Stage");
        if global.HS_B_Stage[i]=7{
                if global.HS_B_Continues[i]=0
                {
                    draw_set_colour(c_white);draw_text(94,36+((50*set)-(50*move)),"ALL!");
                }else{
                    draw_set_colour(c_orange);draw_text(94,36+((50*set)-(50*move)),"ALL");
                }
            }
        else if global.HS_B_Stage[i]=6{draw_set_colour(c_fuchsia);draw_text(94,36+((50*set)-(50*move)),"EX")}
        else {draw_set_colour(c_red);draw_text(94,36+((50*set)-(50*move)),string(global.HS_B_Stage[i]));}
        
        
        draw_set_font(f_Score);
        //draw_set_colour(c_white);draw_text(184,45+((50*set)-(50*move)),string(type[global.HS_B_Type[i]]));
        //draw_set_colour(c_white);draw_text(184,45+((50*set)-(50*move)),string(type[global.HS_B_Type[i]])+"-"+string(style[global.HS_B_Style[i]]));
        draw_set_font(f_HUD2);
        //Name
        draw_text_color(184,19+((50*set)-(50*move)),global.HS_B_Name[i],c_white,c_white,col2,col2,1);
    }
    draw_set_halign(fa_center);
    draw_set_font(f_HUD1);
    draw_set_colour(c_lime);
    draw_text_outline(120,0,"HIGH SCORES-BASIC",1,c_black,4);
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}