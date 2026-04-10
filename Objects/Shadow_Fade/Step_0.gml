if ok=1
{
    if image_alpha>0
    {
    	image_alpha-=0.1;
    }else
    {
    	instance_destroy();
    }
}
image_xscale=sze;
image_yscale=sze;
if (mode==0) image_angle=direction;