function scr_SetHS_Basic(){
    for (var i=10;i>0;i--)
    {
        if i>global.playerRanking   
        {
            global.HS_B_Score[i]=global.HS_B_Score[i-1];
            global.HS_B_ScoreM[i]=global.HS_B_ScoreM[i-1];
            global.HS_B_ScoreB[i]=global.HS_B_ScoreB[i-1];
            global.HS_B_Name[i]=global.HS_B_Name[i-1];
            global.HS_B_Stage[i]=global.HS_B_Stage[i-1];
            global.HS_B_Continues[i]=global.HS_B_Continues[i-1];
            global.HS_B_Type[i]=global.HS_B_Type[i]
            global.HS_B_Style[i]=global.HS_B_Style[i-1];
            global.HS_B_Color[i]=global.HS_B_Color[i-1];
        }
    }
    global.HS_B_Score[global.playerRanking]=score;
    global.HS_B_ScoreM[global.playerRanking]=global.scoreMillion;
    global.HS_B_ScoreB[global.playerRanking]=global.scoreBillion;
    global.HS_B_Name[global.playerRanking]=global.name;
    global.HS_B_Stage[global.playerRanking]=global.stage;
    global.HS_B_Continues[global.playerRanking]=global.continues;
    global.HS_B_Type[global.playerRanking]=global.playerType;
    global.HS_B_Style[global.playerRanking]=global.playerStyle;
    global.HS_B_Color[global.playerRanking]=global.playerColor;
}