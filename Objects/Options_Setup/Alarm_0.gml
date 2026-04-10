/// @description 
if global.Option_Resolution=0
{
    window_set_size(screenSize_W,screenSize_H);
}else if global.Option_Resolution=1{
    window_set_size(screenSize_W*1.5,screenSize_H*1.5);
}else if global.Option_Resolution=2{
    window_set_size(screenSize_W*2,screenSize_H*2);
}else if global.Option_Resolution=3{
    window_set_size(screenSize_W*3,screenSize_H*3);
}else if global.Option_Resolution=4{
    window_set_size(display_get_width(),display_get_height());
}
if global.Option_Resolution=4{window_set_fullscreen(true);}
else{window_set_fullscreen(false);}


if (resSave!=global.Option_Resolution)
{
    resSave=global.Option_Resolution;
    alarm[1]=15;  
}
alarm[0]=10;