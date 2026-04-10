/// @description 


if global.Option_Hud=1
{
    draw_set_colour(c_white);
	draw_sprite(HUD_HPBAR,0,0,round(global.hudMove*2)-20);
    if (hp<=lhp)
    {
        draw_gui_bar(HUD_HPBAR,2,hp,mhp,0,round(global.hudMove*2)-20,1,1,c_white,1,0);
    }else{
        draw_gui_bar(HUD_HPBAR,1,hp,mhp,0,round(global.hudMove*2)-20,1,1,c_white,1,0);
    }
	draw_set_alpha(1);
    draw_set_halign(fa_center);draw_set_font(f_HUD2);
	if (startup!=0) draw_gui_bar(HUD_HPBAR,1,global.bossPhaseLimit[global.bossPhase],mhp,0,round(global.hudMove*2)-20,1,1,c_white,1,0);
	draw_text_outline_ex(120,round(global.hudMove*2)-40,$"{global.bossTime}",1,c_black,4,1,1,c_white,c_ltgray);
	draw_set_halign(fa_right);draw_set_font(f_Small);
	draw_text_outline_ex(235,round(global.hudMove*2)-38,global.bossName,1,c_black,4,1,1,c_white,c_ltgray);
	for (var i=0;i<5;i++)
	{
		//if I don't do this the game crashes idk why
		if (global.bossPhaseLimit[0]>0)&&(global.bossPhase<=i)
		{
			draw_sprite(HUD_HPSEGMENT,0,round(240 * (global.bossPhaseLimit[0]/mhp)) ,round(global.hudMove*2)-20)
		}	
	}
	
	draw_set_colour(c_white);
    draw_set_halign(fa_left);
}