function scr_shiteX(argument0) {
	if file_exists("inputX.ini")
	{
	    ini_open("inputX.ini")
	    if ini_section_exists(argument0)
	    {
	        global.gX_ukey=ini_read_real(argument0, "Up", 69)
	        global.gX_dkey=ini_read_real(argument0, "Down", 69)
	        global.gX_lkey=ini_read_real(argument0, "Left", 69)
	        global.gX_rkey=ini_read_real(argument0, "Right", 69)
	        global.gX_skey=ini_read_real(argument0, "Start", 69)
	        global.gX_akey=ini_read_real(argument0, "A Button/ Shoot", 69)
	        global.gX_bkey=ini_read_real(argument0, "B Button/ Bomb", 69)
	        global.gX_xkey=ini_read_real(argument0, "C Button/ Speed", 69)
	    }
	    ini_close();
	}


}
