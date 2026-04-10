/// @description 

draw_set_halign(fa_center);

draw_set_color(c_white);
draw_circle(x,y,100*sze,true);
for (var i=0;i<3;i++)
{
    var xx=x+lengthdir_x(100*sze,lightningDir1[i]);
    var yy=y+lengthdir_y(100*sze,lightningDir1[i]);
    draw_lightning_simple(x,y,xx,yy,32,20);
}
gpu_set_blendmode_ext(bm_src_alpha, bm_one);
draw_set_alpha(random(1));
draw_circle_color(x,y,100*sze,c_red,c_black,false);

draw_self();
gpu_set_blendmode(bm_normal);
    

        
        
        draw_set_color(c_red);
        for (var i=0;i<3;i++)
        {
            draw_set_alpha(random(1));
            var xx=x+lengthdir_x(200*sze,lightningDir2[i]);
            var yy=y+lengthdir_y(200*sze,lightningDir2[i]);
            draw_lightning_simple(x,y,xx,yy,32,20);
        }
        
    
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);  
//


//draw_self();
draw_set_color(c_white);
draw_set_halign(fa_left);  