function scr_Setup_HighScores(){
    for (var i=1;i<11;i+=1)
    {
        global.HS_B_Score[i]=0;
        global.HS_B_ScoreM[i]=100-(10*(i-1));
        global.HS_B_ScoreB[i]=0;
        global.HS_B_Name[i]="AAA";
        global.HS_B_Stage[i]=1;
        global.HS_B_Continues[i]=1;
        global.HS_B_Type[i]=(i-1)%4;
        global.HS_B_Style[i]=(i-1)%2;
        global.HS_B_Color[i]=0;
    }
    for (var j=0;j<4;j+=1)
    {
        for (var i=1;i<11;i+=1)
        {
            global.HST_B_Score[i,j]=0;
            global.HST_B_ScoreM[i,j]=100-(10*(i-1));
            global.HST_B_ScoreB[i,j]=0;
            global.HST_B_Name[i,j]="AAA";
            global.HST_B_Stage[i,j]=1;
            global.HST_B_Continues[i,j]=1;
            global.HST_B_Type[i,j]=j;
            global.HST_B_Style[i,j]=(i-1)%2;
            global.HST_B_Color[i,j]=0;
        }
    }
    
    scr_LoadScoresBasic();

}