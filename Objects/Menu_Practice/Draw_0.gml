/// @description 
draw_set_halign(fa_left)
draw_set_valign(fa_middle);
draw_set_font(f_HUD1);
draw_set_colour(c_white);
draw_sprite(sprite_index,0, 20, y+select*space);
var m;
for (m=0;m<array_length(menu);m+=1)
{
    draw_text(x+space,y+(m*space),string(menu[m]));
}  
var stageName;
switch(setStage)
{
    case 0:  stageName="SKYLANDS"; break;
    case 1:  stageName="CAPITAL"; break;
    case 2:  stageName="BATTLEFIELD"; break;
    case 3:  stageName="AQUATIC"; break;
    case 4:  stageName="FLEET"; break;
    case 5:  stageName="HEADQUARTERS"; break;
    case 6:  stageName="DUEL"; break;
    default: break;
}
draw_set_colour(c_aqua);
draw_text(x+70,y+(1*space),string(stageName));  
draw_set_colour(c_red);
draw_text(x+70,y+2*space,string(setRank));
    switch (setType)
    {
        case 0: draw_set_colour(c_ltgray); draw_text(x+105,y+3*space,"WHITE LION"); break; 
        case 1: draw_set_colour(c_red); draw_text(x+105,y+3*space,"RUBY BUSTER"); break; 
        case 2: draw_set_colour(c_mango); draw_text(x+105,y+3*space,"NOBLE RAY"); break; 
        case 3: draw_set_colour(c_blue); draw_text(x+105,y+3*space,"WENDIGO"); break; 
    }
    //draw_sprite(s_Ships,setType,(x+120),(y+3*space));
    draw_set_colour(c_red);
    for (i=1;i<6;i+=1)
    {
        draw_sprite(s_HUD_WeaponLevel,0,(i*17)-17+(x+110),(y+4*space));
        if (i<=setShot)
        {
            draw_sprite(s_HUD_WeaponLevel,1,(i*17)-17+(x+110),(y+4*space));
        }
    }
    for (i=0;i<4;i+=1)
    {
        draw_sprite(s_HUD_WeaponLevel,2,(i*17)+(x+110),(y+5*space));
        if (i<setWeapon)
        {
            draw_sprite(s_HUD_WeaponLevel,3,(i*17)+(x+110),(y+5*space));
        }
    }
    draw_set_colour(c_aqua);
    for (i=0;i<setLife-1;i+=1)
    {
        draw_sprite(s_HUD_LifeStock,setType,(i*20)+(x+95),(y+6*space));
    }
    draw_text(x+70,y+5*space+20,string(setLife));
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);