
draw_self();


draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
//draw_text(x+20,y,hurt);
/*

for (var i=0;i<20;i++)
{
    var xx=x+lengthdir_x(40,(14*i)+90);
    var yy=y+lengthdir_y(40,(14*i)+90);
    var point=point_direction(xx,yy,x,y);
    var energy=floor(global.subEnergy/5);
    if global.subStock<2
    {
    if (i<energy)&&(energy!=0){
        draw_sprite_ext(s_Hud_EnergyRing,0,xx,yy,1,1,point,c_white,0.5);
    }
    }else{
        draw_sprite_ext(s_Hud_EnergyRing,1,xx,yy,1,1,point,c_white,0.5);
    }
}