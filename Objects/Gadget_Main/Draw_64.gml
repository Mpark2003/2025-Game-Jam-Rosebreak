/// @description 

if global.gadgetSet_Active=1
{
    if (surface_exists(Surface_Main.main_surface))
    {
        surface_set_target(Surface_Main.main_surface);
    
        draw_clear_alpha(c_black,0);
        draw_set_font(f_Small);
        //draw_sprite(Wallpaper_1,0,0,0);
        //draw_sprite(s_Borders,0,151,0);
        //draw_sprite(s_Borders,1,404,0);
        var plus=round(global.gadgetMove*5);
         
        if (global.hudSet[0]==1||global.hudSet[0]==3)
        {    
          // scr_DrawScoreG();
          // scr_DrawHighScoreG();
        }
        if (global.hudSet[1]==1||global.hudSet[1]==3)
        {
           //scr_DrawGadget_PlayerStats();
        }
        if (global.hudSet[2]==1||global.hudSet[2]==3)
        {
               //scr_DrawGadget_Medal();
        }
        if (global.hudSet[3]==1||global.hudSet[3]==3)
        {
              // scr_DrawGadget_Stage();
               //scr_DrawGadget_Rank();
        }

        if (global.hudSet[4]==1||global.hudSet[4]==3)
        {
           
        }
            
       
        draw_set_font(f_Small);
        draw_set_color(c_white);
        draw_set_alpha(1);
        draw_text(525,310,"FPS:"+string(fps));
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(c_white);
        draw_set_alpha(1);
        surface_reset_target(); 
    }
}