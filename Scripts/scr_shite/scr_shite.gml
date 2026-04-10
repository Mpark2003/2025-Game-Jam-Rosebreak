function scr_shite(argument0) {
	if file_exists("input.ini")
	{
	    ini_open("input.ini")
	    if ini_section_exists(argument0)
	    {
	        global.g_ukey=ini_read_real(argument0, "Up", 69)
	        global.g_dkey=ini_read_real(argument0, "Down", 69)
	        global.g_lkey=ini_read_real(argument0, "Left", 69)
	        global.g_rkey=ini_read_real(argument0, "Right", 69)
	        global.g_skey=ini_read_real(argument0, "Start", 69)
	        global.g_akey=ini_read_real(argument0, "A Button/ Shoot", 69)
	        global.g_bkey=ini_read_real(argument0, "B Button/ Bomb", 69)
	        global.g_xkey=ini_read_real(argument0, "C Button/ Speed", 69)
	    }
	    ini_close();
	}


}
