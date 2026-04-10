/// @description 


if table=0
{
    scr_DrawHighScores_Basic();
}

if move<4
{
    draw_sprite(s_HS_Arrow,1,225,310);
}
if move>0
{
    draw_sprite(s_HS_Arrow,0,225,10);
}