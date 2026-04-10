function Menu_Script() {
	switch (select)
	{
	    case 0:
	    {
	        instance_create_depth(0,0,-100,Black_Fade_Start);
	        break;
	    }
        case 1:
	    {
			instance_create_depth(x,y,-1000,Black_Fade_HighScore);
	        break;
	    }
	    case 2:
	    {
			instance_create_depth(x,y,-1000,Menu_Options);
	        break;
	    }
        case 3:
	    {
            game_end();
	        break;
	    }
	    default: break;
	}


}
