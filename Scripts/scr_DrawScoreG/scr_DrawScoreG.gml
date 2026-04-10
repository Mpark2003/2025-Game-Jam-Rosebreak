function scr_DrawScoreG(){
    ts_init();
    var plus=(global.gadgetMove*5);
    draw_set_alpha(0.75);
    draw_set_color(c_black);
    draw_rectangle(5+plus,5,160+plus,25,false);
    draw_set_alpha(1);
    draw_rectangle_color(5+plus,5,160+plus,25,c_dkgray,c_dkgray,c_gray,c_gray,true);
    
    if (score>=1000000)
    {
        var val=floor(score/1000000);
        score-=1000000*val;
        global.scoreMillion+=val;
    }
    if (global.scoreMillion>=1000)
    {
        global.scoreMillion-=1000;
        global.scoreBillion++;
    }
    
    var value=score;
    var valueM=global.scoreMillion;
    var valueB=global.scoreBillion;
    var drawS,drawM,drawB;
    if(valueM==0){
    if value<10
        {
            drawS= ts_colour(c_dkgray)+"00000"+ts_colour(c_white)+string(value);
        }else if value>=10 && value<100 
        {
            drawS=  ts_colour(c_dkgray)+"0000"+ts_colour(c_white)+string(value);
        }else if value>=100 && value<1000 
        {
            drawS=  ts_colour(c_dkgray)+"000"+ts_colour(c_white)+string(value);
        }else if value>=1000 && value<10000 
        {
            drawS=  ts_colour(c_dkgray)+"00"+ts_colour(c_white)+string(value);
        }else if value>=10000 && value<100000 
        {
            drawS=  ts_colour(c_dkgray)+"0"+ts_colour(c_white)+string(value);
        }else{
            drawS= ts_colour(c_white)+string(value);
        }
    }
    else{
          if value<10
        {
            drawS= ts_colour(c_white)+"00000"+ts_colour(c_white)+string(value);
        }else if value>=10 && value<100 
        {
            drawS=  ts_colour(c_white)+"0000"+ts_colour(c_white)+string(value);
        }else if value>=100 && value<1000 
        {
            drawS=  ts_colour(c_white)+"000"+ts_colour(c_white)+string(value);
        }else if value>=1000 && value<10000 
        {
            drawS=  ts_colour(c_white)+"00"+ts_colour(c_white)+string(value);
        }else if value>=10000 && value<100000 
        {
            drawS=  ts_colour(c_white)+"0"+ts_colour(c_white)+string(value);
        }else{
            drawS= ts_colour(c_white)+string(value);
        }  
    }
    
    if(valueB==0)
    {
        if valueM=0
        {
            drawM= ts_colour(c_dkgray)+"000";
        }else if valueM<10&& valueM!=0
        {
            drawM= ts_colour(c_dkgray)+"00"+ts_colour(c_white)+string(valueM);
        }else if valueM>=10 && valueM<100 
        {
            drawM= ts_colour(c_dkgray)+"0"+ts_colour(c_white)+string(valueM);
        }else if valueM>=100
        {
            drawM= ts_colour(c_white)+string(valueM);
        }
    }else{
        if valueM=0
        {
            drawM= ts_colour(c_white)+"000";
        }else if valueM<10&& valueM!=0
        {
            drawM= ts_colour(c_white)+"00"+ts_colour(c_white)+string(valueM);
        }else if valueM>=10 && valueM<100 
        {
            drawM= ts_colour(c_white)+"0"+ts_colour(c_white)+string(valueM);
        }else if valueM>=100
        {
            drawM= ts_colour(c_white)+string(valueM);
        }
    }
    
    if (valueB=0)
    {
        drawB= ts_colour(c_dkgray)+"";
    }else
    {
        drawB= ts_colour(c_white)+string(valueB);
    }
    
    var txt;
    txt=ts_valign(fa_bottom)+ts_font(f_ScoreB)+drawB+""+drawM+drawS+ts_valign(fa_top);
    draw_text_special(7+plus,2,txt);
    draw_set_font(f_Small);
    draw_text_color(7+plus,14,"SCORE",c_white,c_white,c_gray,c_gray,1);
    /*
    draw_set_halign(fa_right);
    draw_set_font(f_Score);
    draw_text_outline(189,9,string(drawM),1,c_black,4);
    draw_set_font(f_ScoreSmall);
    draw_text_outline(238,12,string(drawS),1,c_black,4);*/
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}