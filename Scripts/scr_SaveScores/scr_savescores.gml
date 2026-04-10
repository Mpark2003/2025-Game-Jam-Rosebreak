function scr_SaveScoresBasic() {
	if (file_exists("HighScores_Basic.sav")){file_delete("HighScores_Basic.sav");}
	ini_open("HighScores_Basic.sav");
    for (var i=1;i<11;i+=1)
    {
        var hsScore=global.HS_B_Score[i];
        var hsScoreM=global.HS_B_ScoreM[i];
        var hsScoreB=global.HS_B_ScoreB[i];
        var hsName=global.HS_B_Name[i];
        var hsStage=global.HS_B_Stage[i];
        var hsCont=global.HS_B_Continues[i];
        var hsType=global.HS_B_Type[i];
        var hsStyle=global.HS_B_Style[i];
        var hsColor=global.HS_B_Color[i];
        ini_write_real("Save1","hsScore"+string(i),hsScore);
        ini_write_real("Save1","hsScoreM"+string(i),hsScoreM);
        ini_write_real("Save1","hsScoreB"+string(i),hsScoreB);
        ini_write_real("Save1","hsName"+string(i),hsName);
        ini_write_real("Save1","hsCont"+string(i),hsCont);
        ini_write_real("Save1","hsType"+string(i),hsType);
        ini_write_real("Save1","hsStyle"+string(i),hsStyle);
        ini_write_real("Save1","hsColor"+string(i),hsColor);
    }
	for (var j=0;j<4;j+=1)
    {
        for (var i=1;i<11;i+=1)
        {
            var hsScore=global.HST_B_Score[i,j];
            var hsScoreM=global.HST_B_ScoreM[i,j];
            var hsScoreB=global.HST_B_ScoreB[i,j];
            var hsName=global.HST_B_Name[i,j];
            var hsStage=global.HST_B_Stage[i,j];
            var hsCont=global.HST_B_Continues[i,j];
            var hsType=global.HST_B_Type[i,j];
            var hsStyle=global.HST_B_Style[i,j];
            var hsColor=global.HST_B_Color[i,j];
            ini_write_real("Save2_"+string(j),"hsScore"+string(i),hsScore);
            ini_write_real("Save2_"+string(j),"hsScoreM"+string(i),hsScoreM);
            ini_write_real("Save2_"+string(j),"hsScoreB"+string(i),hsScoreB);
            ini_write_real("Save2_"+string(j),"hsName"+string(i),hsName);
            ini_write_real("Save2_"+string(j),"hsCont"+string(i),hsCont);
            ini_write_real("Save2_"+string(j),"hsType"+string(i),hsType);
            ini_write_real("Save2_"+string(j),"hsStyle"+string(i),hsStyle);
            ini_write_real("Save2_"+string(j),"hsColor"+string(i),hsColor);
        }
    }
	ini_close();






}
