function scr_LoadScoresBasic() {
	if file_exists("HighScores_Basic.sav")
	{
	    ini_open("HighScores_Basic.sav");
        for (var i=1;i<11;i+=1)
        {
            global.HS_B_Score[i]=ini_read_real("Save1","hsScore"+string(i),0);
            global.HS_B_ScoreM[i]=ini_read_real("Save1","hsScoreM"+string(i),1);
            global.HS_B_ScoreB[i]=ini_read_real("Save1","hsScoreB"+string(i),0);
            global.HS_B_Name[i]=ini_read_real("Save1","hsName"+string(i),"AAA");
            global.HS_B_Stage[i]=ini_read_real("Save1","hsCont"+string(i),1);
            global.HS_B_Continues[i]=ini_read_real("Save1","hsScore"+string(i),1);
            global.HS_B_Type[i]=ini_read_real("Save1","hsType"+string(i),0);
            global.HS_B_Style[i]=ini_read_real("Save1","hsStyle"+string(i),0);
            global.HS_B_Color[i]=ini_read_real("Save1","hsColor"+string(i),0);
        }
        for (var j=0;j<4;j+=1)
        {
            for (var i=1;i<11;i+=1)
            {
                global.HST_B_Score[i,j]=ini_read_real("Save2_"+string(j),"hsScore"+string(i),0);
                global.HST_B_ScoreM[i,j]=ini_read_real("Save2_"+string(j),"hsScoreM"+string(i),1);
                global.HST_B_ScoreB[i,j]=ini_read_real("Save2_"+string(j),"hsScoreB"+string(i),0);
                global.HST_B_Name[i,j]=ini_read_real("Save2_"+string(j),"hsName"+string(i),"AAA");
                global.HST_B_Stage[i,j]=ini_read_real("Save2_"+string(j),"hsCont"+string(i),1);
                global.HST_B_Continues[i,j]=ini_read_real("Save2_"+string(j),"hsScore"+string(i),1);
                global.HST_B_Type[i,j]=ini_read_real("Save2_"+string(j),"hsType"+string(i),0);
                global.HST_B_Style[i,j]=ini_read_real("Save2_"+string(j),"hsStyle"+string(i),0);
                global.HST_B_Color[i,j]=ini_read_real("Save2_"+string(j),"hsColor"+string(i),0);
            }
        }
	    ini_close();
	}
}

