function Options_Script() {
	switch (select)
	{
	    case 0:
	    {
	        if global.Volume_SFX<10
	        {
	            global.Volume_SFX+=1;
            
	        }
	        else
	        {
	            global.Volume_SFX=0;
	        }
	        audio_group_set_gain(AG_SFX,0.1*global.Volume_SFX,0);
	        audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
	        break;
	    }
	    case 1:
	    {
	        if global.Volume_Music<10
	        {
	            global.Volume_Music+=1;
	        }
	        else
	        {
	            global.Volume_Music=0;
	        }
	        audio_group_set_gain(AG_SFX,0.1*global.Volume_SFX,0);
	        audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);
	        break;
	    }
	    case 2:
	    {
	         if global.Option_Resolution<4
	        {
	            global.Option_Resolution+=1;
	        }
	        else
	        {
	            global.Option_Resolution=0;
	        }
	        break;
	    }
	    case 3:
	    {
	        if global.Option_Acessibility<1
	        {
	            global.Option_Acessibility+=1;
	        }
	        else
	        {
	            global.Option_Acessibility=0;
	        }
	        break;
	    }
	    case 4:
	    {
	        instance_create_depth(x-30,y,0,InputSelect);
			ok=1;
	        instance_destroy();
	        break;
	    }
	    case 5:
	    {
	        instance_create_depth(x,y,0,Menu_Main);
			ok=1;
	        instance_destroy();
	        break;
	    }
	    default: break;
	}


}
