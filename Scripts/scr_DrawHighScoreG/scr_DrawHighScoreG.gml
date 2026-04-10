function scr_DrawHighScoreG(){
    ts_init();
    var plus=(global.gadgetMove*5);
    draw_set_alpha(0.75);
    draw_set_color(c_black);
    draw_rectangle(5+plus,30,160+plus,50,false);
    draw_set_alpha(1);
    draw_rectangle_color(5+plus,30,160+plus,50,c_dkgray,c_dkgray,c_gray,c_gray,true);
    
    var value=global.HS_1_Score;
    var valueM=global.HS_1_ScoreM;
    var valueB=global.HS_1_ScoreB;
    var drawS,drawM,drawB;
    if(valueM==0){
    if value<10
        {
            drawS= ts_colour(c_dkgray)+"00000"+ts_colour(c_mango)+string(value);
        }else if value>=10 && value<100 
        {
            drawS=  ts_colour(c_dkgray)+"0000"+ts_colour(c_mango)+string(value);
        }else if value>=100 && value<1000 
        {
            drawS=  ts_colour(c_dkgray)+"000"+ts_colour(c_mango)+string(value);
        }else if value>=1000 && value<10000 
        {
            drawS=  ts_colour(c_dkgray)+"00"+ts_colour(c_mango)+string(value);
        }else if value>=10000 && value<100000 
        {
            drawS=  ts_colour(c_dkgray)+"0"+ts_colour(c_mango)+string(value);
        }else{
            drawS= ts_colour(c_mango)+string(value);
        }
    }
    else{
          if value<10
        {
            drawS= ts_colour(c_mango)+"00000"+ts_colour(c_mango)+string(value);
        }else if value>=10 && value<100 
        {
            drawS=  ts_colour(c_mango)+"0000"+ts_colour(c_mango)+string(value);
        }else if value>=100 && value<1000 
        {
            drawS=  ts_colour(c_mango)+"000"+ts_colour(c_mango)+string(value);
        }else if value>=1000 && value<10000 
        {
            drawS=  ts_colour(c_mango)+"00"+ts_colour(c_mango)+string(value);
        }else if value>=10000 && value<100000 
        {
            drawS=  ts_colour(c_mango)+"0"+ts_colour(c_mango)+string(value);
        }else{
            drawS= ts_colour(c_mango)+string(value);
        }  
    }
    
    if(valueB==0)
    {
        if valueM=0
        {
            drawM= ts_colour(c_dkgray)+"000";
        }else if valueM<10&& valueM!=0
        {
            drawM= ts_colour(c_dkgray)+"00"+ts_colour(c_mango)+string(valueM);
        }else if valueM>=10 && valueM<100 
        {
            drawM= ts_colour(c_dkgray)+"0"+ts_colour(c_mango)+string(valueM);
        }else if valueM>=100
        {
            drawM= ts_colour(c_mango)+string(valueM);
        }
    }else{
        if valueM=0
        {
            drawM= ts_colour(c_mango)+"000";
        }else if valueM<10&& valueM!=0
        {
            drawM= ts_colour(c_mango)+"00"+ts_colour(c_mango)+string(valueM);
        }else if valueM>=10 && valueM<100 
        {
            drawM= ts_colour(c_mango)+"0"+ts_colour(c_mango)+string(valueM);
        }else if valueM>=100
        {
            drawM= ts_colour(c_mango)+string(valueM);
        }
    }
    
    if (valueB=0)
    {
        drawB= ts_colour(c_dkgray)+"";
    }else
    {
        drawB= ts_colour(c_mango)+string(valueB);
    }
    
    var txt;
    txt=ts_valign(fa_bottom)+ts_font(f_ScoreB)+drawB+""+drawM+drawS+ts_valign(fa_top);
    draw_text_special(7+plus,27,txt);
    draw_set_font(f_Small);
    draw_text_color(7+plus,39,"HIGH SCORE",c_white,c_white,c_mango,c_mango,1);
    /*
    draw_set_halign(fa_right);
    draw_set_font(f_Score);
    draw_text_outline(189,9,string(drawM),1,c_black,4);
    draw_set_font(f_ScoreSmall);
    draw_text_outline(238,12,string(drawS),1,c_black,4);*/
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}