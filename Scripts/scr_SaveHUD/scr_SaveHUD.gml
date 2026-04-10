function scr_SaveHUD() {
	if (file_exists("OptionsHUD.sav")){file_delete("OptionsHUD.sav");}
	ini_open("OptionsHUD.sav");
	var HudDisplay=global.gadgetSet_Active;
	var HudScore=global.hudSet[0];
	var HudPlayer=global.hudSet[1];
	var HudMedal=global.hudSet[2];
	var HudStage=global.hudSet[3];
	
	ini_write_real("Save1","hudDisplay",HudDisplay);
	ini_write_real("Save1","hudScore",HudScore);
	ini_write_real("Save1","hudPlayer",HudPlayer);
	ini_write_real("Save1","hudMedal",HudMedal);
	ini_write_real("Save1","hudStage",HudStage);
	ini_close();
}
