function scr_LoadHUD() {
	if file_exists("OptionsHUD.sav")
	{
	    ini_open("OptionsHUD.sav");
	    global.gadgetSet_Active=ini_read_real("Save1","hudDisplay",1);
	    global.hudSet[0]=ini_read_real("Save1","hudScore",1);
	    global.hudSet[1]=ini_read_real("Save1","hudPlayer",1);
	    global.hudSet[2]=ini_read_real("Save1","hudMedal",1);
	    global.hudSet[3]=ini_read_real("Save1","hudStage",1);
	    ini_close();
	}


}
