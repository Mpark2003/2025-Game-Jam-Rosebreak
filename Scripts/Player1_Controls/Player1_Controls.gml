function Player1_Controls() {
	var i;

	if gamepad_is_connected(0)
	{
	        gamepad_set_axis_deadzone(0,0.5);
	         lkey=gamepad_button_check(0,global.gX_lkey)||(gamepad_axis_value(0,gp_axislh)<0)||keyboard_check(global.g_lkey);
	        lkeyp=gamepad_button_check_pressed(0,global.gX_lkey)||keyboard_check_pressed(global.g_lkey);
	       if gamepad_button_check(0,global.gX_lkey)||gamepad_button_check(0,global.gX_rkey)
	      {
	        lkeyr=gamepad_button_check_released(0,global.g_lkey)||keyboard_check_released(global.g_lkey);
	      }else
	      {
	        lkeyr=gamepad_axis_value(0,gp_axislh)=0;
	      }
	        rkey=gamepad_button_check(0,global.gX_rkey)||(gamepad_axis_value(0,gp_axislh)>0)||keyboard_check(global.g_rkey);
	        rkeyp=gamepad_button_check_pressed(0,global.gX_rkey)||keyboard_check_pressed(global.g_rkey);
	      if gamepad_button_check(0,global.gX_lkey)||gamepad_button_check(0,global.gX_rkey)
	      {
	        rkeyr=gamepad_button_check_released(0,global.g_rkey)||keyboard_check_released(global.g_rkey);
	        }else{
	        rkeyr=gamepad_axis_value(0,gp_axislh)=0;
	        }
	        ukey=gamepad_button_check(0,global.gX_ukey)||(gamepad_axis_value(0,gp_axislv)<0)||keyboard_check(global.g_ukey);
	        ukeyp=gamepad_button_check_pressed(0,global.gX_ukey)||keyboard_check_pressed(global.g_ukey);
	        ukeyr=gamepad_button_check_released(0,global.g_ukey)||(gamepad_axis_value(0,gp_axislv)=0)||keyboard_check_released(global.g_ukey);
	        dkey=gamepad_button_check(0,global.gX_dkey)||(gamepad_axis_value(0,gp_axislv)>0)||keyboard_check(global.g_dkey);
	        dkeyp=gamepad_button_check_pressed(0,global.gX_dkey)||keyboard_check_pressed(global.g_dkey);
	        dkeyr=gamepad_button_check_released(0,global.g_dkey)||(gamepad_axis_value(0,gp_axislv)=0)||keyboard_check_released(global.g_dkey);
	        akey=gamepad_button_check(0,global.gX_akey)||keyboard_check(global.g_akey);
	        akeyp=gamepad_button_check_pressed(0,global.gX_akey)||keyboard_check_pressed(global.g_akey);
	        akeyr=gamepad_button_check_released(0,global.g_akey)||keyboard_check_released(global.g_akey);
	        bkey=gamepad_button_check(0,global.gX_bkey)||keyboard_check(global.g_bkey);
	        bkeyp=gamepad_button_check_pressed(0,global.gX_bkey)||keyboard_check_pressed(global.g_bkey);
	        bkeyr=gamepad_button_check_released(0,global.g_bkey)||keyboard_check_released(global.g_bkey);
	        xkey=gamepad_button_check(0,global.gX_xkey)||keyboard_check(global.g_xkey);
	        xkeyp=gamepad_button_check_pressed(0,global.gX_xkey)||keyboard_check_pressed(global.g_xkey);
            xkeyr=gamepad_button_check_released(0,global.gX_xkey)||keyboard_check_released(global.g_xkey);
            ykey=gamepad_button_check(0,global.gX_ykey)||keyboard_check(global.g_ykey);
	        ykeyp=gamepad_button_check_pressed(0,global.gX_ykey)||keyboard_check_pressed(global.g_ykey);
            okey=gamepad_button_check(0,global.gX_ykey)||keyboard_check(global.g_ykey);
	        okeyp=gamepad_button_check_pressed(0,global.gX_ykey)||keyboard_check_pressed(global.g_ykey);
	        Ikey=gamepad_button_check(0,global.gX_Ikey)||keyboard_check(global.g_Ikey);
            Ikeyp=gamepad_button_check_pressed(0,global.gX_Ikey)||keyboard_check_pressed(global.g_Ikey);
	        skeyp=gamepad_button_check_pressed(0,global.gX_skey)||keyboard_check_pressed(global.g_skey);
	}else if gamepad_is_connected(4)
	{
	        gamepad_set_axis_deadzone(4,0.5);
	         lkey=gamepad_button_check(0,global.gP_lkey)||(gamepad_axis_value(4,gp_axislh)<0)||keyboard_check(global.g_lkey);
	        lkeyp=gamepad_button_check_pressed(4,global.gP_lkey)||keyboard_check_pressed(global.g_lkey);
	       if gamepad_button_check(0,global.gP_lkey)||gamepad_button_check(0,global.gP_rkey)
	      {
	        lkeyr=gamepad_button_check_released(4,global.g_lkey)||keyboard_check_released(global.g_lkey);
	      }else
	      {
	        lkeyr=gamepad_axis_value(4,gp_axislh)=0;
	      }
	        rkey=gamepad_button_check(0,global.gP_rkey)||(gamepad_axis_value(4,gp_axislh)>0)||keyboard_check(global.g_rkey);
	        rkeyp=gamepad_button_check_pressed(4,global.gP_rkey)||keyboard_check_pressed(global.g_rkey);
	      if gamepad_button_check(0,global.gP_lkey)||gamepad_button_check(0,global.gP_rkey)
	      {
	        rkeyr=gamepad_button_check_released(4,global.g_rkey)||keyboard_check_released(global.g_rkey);
	        }else{
	        rkeyr=gamepad_axis_value(4,gp_axislh)=0;
	        }
	        ukey=gamepad_button_check(0,global.gP_ukey)||(gamepad_axis_value(4,gp_axislv)<0)||keyboard_check(global.g_ukey);
	        ukeyp=gamepad_button_check_pressed(4,global.gP_ukey)||keyboard_check_pressed(global.g_ukey);
	        ukeyr=gamepad_button_check_released(4,global.g_ukey)||(gamepad_axis_value(4,gp_axislv)=0)||keyboard_check_released(global.g_ukey);
	        dkey=gamepad_button_check(0,global.gP_dkey)||(gamepad_axis_value(4,gp_axislv)>0)||keyboard_check(global.g_dkey);
	        dkeyp=gamepad_button_check_pressed(4,global.gP_dkey)||keyboard_check_pressed(global.g_dkey);
	        dkeyr=gamepad_button_check_released(4,global.g_dkey)||(gamepad_axis_value(4,gp_axislv)=0)||keyboard_check_released(global.g_dkey);
	        akey=gamepad_button_check(0,global.gP_akey)||keyboard_check(global.g_akey);
	        akeyp=gamepad_button_check_pressed(4,global.gP_akey)||keyboard_check_pressed(global.g_akey);
	        akeyr=gamepad_button_check_released(4,global.g_akey)||keyboard_check_released(global.g_akey);
	        bkey=gamepad_button_check(0,global.gP_bkey)||keyboard_check(global.g_bkey);
	        bkeyp=gamepad_button_check_pressed(4,global.gP_bkey)||keyboard_check_pressed(global.g_bkey);
	        bkeyr=gamepad_button_check_released(4,global.g_bkey)||keyboard_check_released(global.g_bkey);
	        xkey=gamepad_button_check(0,global.gP_xkey)||keyboard_check(global.g_xkey);
	        xkeyp=gamepad_button_check_pressed(4,global.gP_xkey)||keyboard_check_pressed(global.g_xkey);
            xkeyr=gamepad_button_check_released(4,global.gP_xkey)||keyboard_check_released(global.g_xkey);
            ykey=gamepad_button_check(0,global.gP_ykey)||keyboard_check(global.g_ykey);
	        ykeyp=gamepad_button_check_pressed(4,global.gP_ykey)||keyboard_check_pressed(global.g_ykey);
            okey=gamepad_button_check(0,global.gP_okey)||keyboard_check(global.g_okey);
	        okeyp=gamepad_button_check_pressed(4,global.gP_okey)||keyboard_check_pressed(global.g_okey);
	        Ikey=gamepad_button_check(0,global.gP_Ikey)||keyboard_check(global.g_Ikey);
            Ikeyp=gamepad_button_check_pressed(4,global.gP_Ikey)||keyboard_check_pressed(global.g_Ikey);
	        skeyp=gamepad_button_check_pressed(4,global.gP_skey)||keyboard_check_pressed(global.g_skey);
	}else
	{
	        lkey=keyboard_check(global.g_lkey);
	        lkeyp=keyboard_check_pressed(global.g_lkey);
	        lkeyr=keyboard_check_released(global.g_lkey);
	        rkey=keyboard_check(global.g_rkey);
	        rkeyp=keyboard_check_pressed(global.g_rkey);
	        rkeyr=keyboard_check_released(global.g_rkey);
	        ukey=keyboard_check(global.g_ukey);
	        ukeyp=keyboard_check_pressed(global.g_ukey);
	        ukeyr=keyboard_check_released(global.g_ukey);
	        dkey=keyboard_check(global.g_dkey);
	        dkeyp=keyboard_check_pressed(global.g_dkey);
	        dkeyr=keyboard_check_released(global.g_dkey);
	        akey=keyboard_check(global.g_akey);
	        akeyp=keyboard_check_pressed(global.g_akey);
	        akeyr=keyboard_check_released(global.g_akey);
	        bkey=keyboard_check(global.g_bkey);
	        bkeyp=keyboard_check_pressed(global.g_bkey);
	        bkeyr=keyboard_check_released(global.g_bkey);
	        xkey=keyboard_check(global.g_xkey);
	        xkeyp=keyboard_check_pressed(global.g_xkey);
            xkeyr=keyboard_check_released(global.g_xkey);
            ykey=keyboard_check(global.g_ykey);
	        ykeyp=keyboard_check_pressed(global.g_ykey);
            okey=keyboard_check(global.g_okey);
	        okeyp=keyboard_check_pressed(global.g_okey);
	        Ikey=keyboard_check(global.g_Ikey);
            Ikeyp=keyboard_check_pressed(global.g_Ikey);
	        skeyp=keyboard_check_pressed(global.g_skey);
	}
    
    }

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        




