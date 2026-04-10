///Important Variables
global.play=0;
global.viewDir=1;//0:Static 1:Right 2:Left 3:Up 4:Down
global.viewVScroll=0;
screenSize_W = 240;
screenSize_H = 320;
//Option Variables
global.Volume_SFX=5;
global.Volume_Music=9;
global.Option_FullScreen=0;
global.Option_Acessibility=0;
global.Option_Hud=1;
global.Option_AHud=1;
global.Option_Control=0;
global.Option_Resolution=0;
resSave=global.Option_Resolution;

//Control Variables
global.controllersIn=0;
alarm[0]=1;

//Keyboard
    global.g_lkey=vk_left;
    global.g_rkey=vk_right;
    global.g_ukey=vk_up;
    global.g_dkey=vk_down;
    global.g_akey=ord("Z");
    global.g_bkey=ord("X");
    global.g_xkey=ord("C");
    global.g_ykey=vk_shift;
    global.g_okey=vk_space;
    global.g_Ikey=vk_shift;
    global.g_skey=vk_enter;
    scr_shite("Player Input");
//Xbox
    global.gX_lkey=gp_padl;
    global.gX_rkey=gp_padr;
    global.gX_ukey=gp_padu;
    global.gX_dkey=gp_padd;
    global.gX_akey=gp_face1;
    global.gX_bkey=gp_face2;
    global.gX_xkey=gp_face3;
    global.gX_ykey=gp_face4;
    global.gX_okey=gp_shoulderlb;
    global.gX_Ikey=gp_shoulderrb;
    global.gX_skey=gp_start;
    scr_shiteX("Player InputX");
//Playstation
    global.gP_lkey=gp_padl;
    global.gP_rkey=gp_padr;
    global.gP_ukey=gp_padu;
    global.gP_dkey=gp_padd;
    global.gP_akey=gp_face1;
    global.gP_bkey=gp_face2;
    global.gP_xkey=gp_face3;
    global.gP_ykey=gp_face4;
    global.gP_okey=gp_shoulderlb;
    global.gP_Ikey=gp_shoulderrb;
    global.gP_skey=gp_start;
    scr_shiteP("Player InputP");
//General
    global.general_lkey=vk_left;
    global.general_rkey=vk_right;
    global.general_ukey=vk_up;
    global.general_dkey=vk_down;
    global.general_akey=vk_space;
    global.general_bkey=vk_backspace;
    global.general_xkey=ord("A");
    global.general_ykey=ord("S");
    global.general_okey=ord("C");
    global.general_Ikey=vk_insert;
    global.general_skey=vk_enter;
    
scr_LoadOptions();


if !audio_group_is_loaded(AG_SFX)
    {
        audio_group_load(AG_SFX);
    }
if !audio_group_is_loaded(AG_Music)
    {
        audio_group_load(AG_Music);
    }
	
	audio_group_set_gain(AG_SFX,0.1*global.Volume_SFX,0);
        audio_group_set_gain(AG_Music,0.1*global.Volume_Music,0);