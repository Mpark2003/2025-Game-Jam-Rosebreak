function scr_shiteP(argument0) {
	if file_exists("inputP.ini")
	{
	    ini_open("inputP.ini")
	    if ini_section_exists(argument0)
	    {
	        global.gP_ukey=ini_read_real(argument0, "Up", 69)
	        global.gP_dkey=ini_read_real(argument0, "Down", 69)
	        global.gP_lkey=ini_read_real(argument0, "Left", 69)
	        global.gP_rkey=ini_read_real(argument0, "Right", 69)
	        global.gP_skey=ini_read_real(argument0, "Start", 69)
	        global.gP_akey=ini_read_real(argument0, "A Button/ Shoot", 69)
	        global.gP_bkey=ini_read_real(argument0, "B Button/ Bomb", 69)
	        global.gP_xkey=ini_read_real(argument0, "C Button/ Speed", 69)
	    }
	    ini_close();
	}


}
