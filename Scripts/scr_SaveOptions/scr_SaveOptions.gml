function scr_SaveOptions() {
	if (file_exists("Options.sav")){file_delete("Options.sav");}
	ini_open("Options.sav");
	var optSFX=global.Volume_SFX;
	var optMusic=global.Volume_Music;
	var optHud=global.Option_Hud;
	var optFullscreen=global.Option_Resolution;
	var optExt=global.Option_Acessibility;
	var optControl=global.Option_Control;
	
	ini_write_real("Save1","sfx",optSFX);
	ini_write_real("Save1","music",optMusic);
	ini_write_real("Save1","hud",optHud);
	ini_write_real("Save1","access",optExt);
	ini_write_real("Save1","fullscreen",optFullscreen);
	ini_write_real("Save1","control",optControl);
	
	ini_close();



}
