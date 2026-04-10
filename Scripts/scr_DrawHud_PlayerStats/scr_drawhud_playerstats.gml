function scr_DrawHud_PlayerStats(){
        for(var i=0;i<global.life-1;i++)
        {
            draw_sprite(s_HUD_LifeStock,0,12+(i*18),40);
        }
        if (global.gameActive)
        {
            if global.bomberCharge<100
            {
                draw_sprite(s_HUD_PlayerMeter_Cover,0,1,298);
                draw_gui_bar(s_HUD_PlayerMeter_BombBar,0,global.bomberCharge,100,23,310,1,1,c_white,1,2);
            } 
            else
            {
                draw_sprite(s_HUD_PlayerMeter_Cover,-1,1,298);
                draw_sprite(s_HUD_PlayerMeter_BombBar,1,23,310);
            }
        }
}