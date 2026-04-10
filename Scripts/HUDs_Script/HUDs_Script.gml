function HUDs_Script() {
	switch (select)
	{
	    case 0:
	    {
	        if global.gadgetSet_Active=0
	        {
	            global.gadgetSet_Active=1;
                for (var i=0;i<10;i+=1)
                {
                    global.hudSet[i]=1;
                }
	        }
	        else
	        {
	            global.gadgetSet_Active=0;
                for (var i=0;i<10;i+=1)
                {
                    global.hudSet[i]=2;
                }
	        }
            select=0;
	        break;
	    }
	    case 1:
	    {
	        if global.hudSet[0]<3
	        {
	             global.hudSet[0]+=1;
	        }
	        else
	        {
	             global.hudSet[0]=0;
	        }
	        break;
	    }

	    case 2:
	    {
	        if global.hudSet[1]<3
	        {
	             global.hudSet[1]+=1;
	        }
	        else
	        {
	             global.hudSet[1]=0;
	        }
	        break;
	    }
    
	    case 3:
	    {
	        if global.hudSet[2]<3
	        {
	             global.hudSet[2]+=1;
	        }
	        else
	        {
	             global.hudSet[2]=0;
	        }
	        break;
	    }
	    case 4:
	    {
	        if global.hudSet[3]<3
	        {
	             global.hudSet[3]+=1;
	        }
	        else
	        {
	             global.hudSet[3]=0;
	        }
	        break;
	    }
	    case 5:
	    {
	        instance_create_depth(x,y,0,Menu_Options);
			ok=1;
	        instance_destroy();
	        break;
	    }
	    default: break;
	}


}
