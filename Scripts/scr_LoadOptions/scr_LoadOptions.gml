function scr_LoadOptions() {
	if file_exists("Options.sav")
	{
	    ini_open("Options.sav");
	    global.Volume_SFX=ini_read_real("Save1","sfx",5);
	    global.Volume_Music=ini_read_real("Save1","music",9);
	    global.Option_Hud=ini_read_real("Save1","hud",1);
	    global.Option_Acessibility=ini_read_real("Save1","access",0);
	    global.Option_Resolution=ini_read_real("Save1","fullscreen",0);
	    global.Option_Control=ini_read_real("Save1","control",0);
	    ini_close();
	}


}
