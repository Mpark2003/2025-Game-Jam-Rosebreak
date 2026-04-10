function scr_DrawScore_Table(scr,scrM,scrB){
  
        draw_set_color(c_white);
    var value=scr;
    var valueM=scrM;
    var valueB=scrB;
    var drawS,drawM,drawB;
    if(valueM>0){
        if value<10
        {
            drawS= "00000"+string(value);
        }else if value>=10 && value<100 
        {
            drawS=  "0000"+string(value);
        }else if value>=100 && value<1000 
        {
            drawS=  "000"+string(value);
        }else if value>=1000 && value<10000 
        {
            drawS=  "00"+string(value);
        }else if value>=10000 && value<100000 
        {
            drawS=  "0"+string(value);
        }else{
            drawS= string(value);
        }
    }
    else{
        drawS=string(value);
    }
    
    if(valueB>0)
    {
        if valueM=0
        {
            drawM= "000";
        }else if valueM<10&& valueM!=0
        {
            drawM= "00"+string(valueM);
        }else if valueM>=10 && valueM<100 
        {
            drawM= "0"+string(valueM);
        }else if valueM>=100
        {
            drawM= string(valueM);
        }
    }else{
        if(valueM>0){
            drawM= string(valueM);
        }else{
            drawM= ""
        }
    }
    
    if (valueB>0)
    {
       drawB= string(valueB);
    }else{
       drawB= ""
    }
    
    var txt;
    txt=drawB+drawM+drawS;
    for (var i = string_length(txt) - 2; i > 1; i -= 3) {
        txt = string_insert(",", txt, i);
    }

    return txt;
    

    /*
    draw_set_halign(fa_right);
    draw_set_font(f_Score);
    draw_text_outline(189,9,string(drawM),1,c_black,4);
    draw_set_font(f_ScoreSmall);
    draw_text_outline(238,12,string(drawS),1,c_black,4);*/
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}