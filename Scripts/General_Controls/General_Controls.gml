function General_Controls() {
	if gamepad_is_connected(0)
	{
	        gamepad_set_axis_deadzone(0,0.5);
	         lkey=gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh)<0)||keyboard_check(global.general_lkey);
	        lkeyp=gamepad_button_check_pressed(0,gp_padl)||keyboard_check_pressed(global.general_lkey);
	       if gamepad_button_check(0,gp_padl)||gamepad_button_check(0,gp_padr)
	      {
	        lkeyr=gamepad_button_check_released(0,gp_padl)||keyboard_check_released(global.general_lkey);
	      }else
	      {
	        lkeyr=gamepad_axis_value(0,gp_axislh)=0;
	      }
	        rkey=gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh)>0)||keyboard_check(global.general_rkey);
	        rkeyp=gamepad_button_check_pressed(0,gp_padr)||keyboard_check_pressed(global.general_rkey);
	      if gamepad_button_check(0,gp_padl)||gamepad_button_check(0,gp_padr)
	      {
	        rkeyr=gamepad_button_check_released(0,gp_padr)||keyboard_check_released(global.general_rkey);
	        }else{
	        rkeyr=gamepad_axis_value(0,gp_axislh)=0;
	        }
	        ukey=gamepad_button_check(0,gp_padu)||(gamepad_axis_value(0,gp_axislv)<0)||keyboard_check(global.general_ukey);
	        ukeyp=gamepad_button_check_pressed(0,gp_padu)||keyboard_check_pressed(global.general_ukey);
	        ukeyr=gamepad_button_check_released(0,gp_padu)||(gamepad_axis_value(0,gp_axislv)=0)||keyboard_check_released(global.general_ukey);
	        dkey=gamepad_button_check(0,gp_padd)||(gamepad_axis_value(0,gp_axislv)>0)||keyboard_check(global.general_dkey);
	        dkeyp=gamepad_button_check_pressed(0,gp_padd)||keyboard_check_pressed(global.general_dkey);
	        dkeyr=gamepad_button_check_released(0,gp_padd)||(gamepad_axis_value(0,gp_axislv)=0)||keyboard_check_released(global.general_dkey);
	        akey=gamepad_button_check(0,gp_face1)||keyboard_check(global.general_akey);
	        akeyp=gamepad_button_check_pressed(0,gp_face1)||keyboard_check_pressed(global.general_akey);
	        akeyr=gamepad_button_check_released(0,gp_face1)||keyboard_check_released(global.general_akey);
	        bkey=gamepad_button_check(0,gp_face2||keyboard_check(global.general_bkey));
	        bkeyp=gamepad_button_check_pressed(0,gp_face2)||keyboard_check_pressed(global.general_bkey);
	        bkeyr=gamepad_button_check_released(0,gp_face2)||keyboard_check_released(global.general_bkey);
	        xkey=gamepad_button_check(0,gp_face3)||keyboard_check(global.general_xkey);
	        xkeyp=gamepad_button_check_pressed(0,gp_face3)||keyboard_check_pressed(global.general_xkey);
	        skeyp=gamepad_button_check_pressed(0,gp_start)||keyboard_check_pressed(global.general_skey);
	}else if gamepad_is_connected(4)
	{
	        gamepad_set_axis_deadzone(4,0.5);
	         lkey=gamepad_button_check(4,gp_padl)||(gamepad_axis_value(4,gp_axislh)<0)||keyboard_check(global.general_lkey);
	        lkeyp=gamepad_button_check_pressed(4,gp_padl)||keyboard_check_pressed(global.general_lkey);
	       if gamepad_button_check(4,gp_padl)||gamepad_button_check(4,gp_padr)
	      {
	        lkeyr=gamepad_button_check_released(4,gp_padl)||keyboard_check_released(global.general_lkey);
	      }else
	      {
	        lkeyr=gamepad_axis_value(4,gp_axislh)=0;
	      }
	        rkey=gamepad_button_check(4,gp_padr)||(gamepad_axis_value(4,gp_axislh)>0)||keyboard_check(global.general_rkey);
	        rkeyp=gamepad_button_check_pressed(4,gp_padr)||keyboard_check_pressed(global.general_rkey);
	      if gamepad_button_check(4,gp_padl)||gamepad_button_check(4,gp_padr)
	      {
	        rkeyr=gamepad_button_check_released(4,gp_padr)||keyboard_check_released(global.general_rkey);
	        }else{
	        rkeyr=gamepad_axis_value(4,gp_axislh)=0;
	        }
	        ukey=gamepad_button_check(4,gp_padu)||(gamepad_axis_value(4,gp_axislv)<0)||keyboard_check(global.general_ukey);
	        ukeyp=gamepad_button_check_pressed(4,gp_padu||keyboard_check_pressed(global.general_ukey));
	        ukeyr=gamepad_button_check_released(4,gp_padu)||(gamepad_axis_value(4,gp_axislv)=0)||keyboard_check_released(global.general_ukey);
	        dkey=gamepad_button_check(4,gp_padd)||(gamepad_axis_value(4,gp_axislv)>0)||keyboard_check(global.general_dkey);
	        dkeyp=gamepad_button_check_pressed(4,gp_padd)||keyboard_check_pressed(global.general_dkey);
	        dkeyr=gamepad_button_check_released(4,gp_padd)||(gamepad_axis_value(4,gp_axislv)=0)||keyboard_check_released(global.general_dkey);
	        akey=gamepad_button_check(4,gp_face1)||keyboard_check(global.general_akey);
	        akeyp=gamepad_button_check_pressed(4,gp_face1)||keyboard_check_pressed(global.general_akey);
	        akeyr=gamepad_button_check_released(4,gp_face1)||keyboard_check_released(global.general_akey);
	        bkey=gamepad_button_check(4,gp_face2||keyboard_check(global.general_bkey));
	        bkeyp=gamepad_button_check_pressed(4,gp_face2)||keyboard_check_pressed(global.general_bkey);
	        bkeyr=gamepad_button_check_released(4,gp_face2)||keyboard_check_released(global.general_bkey);
	        xkey=gamepad_button_check(4,gp_face3)||keyboard_check(global.general_xkey);
	        xkeyp=gamepad_button_check_pressed(4,gp_face3)||keyboard_check_pressed(global.general_xkey);
	        skeyp=gamepad_button_check_pressed(4,gp_start)||keyboard_check_pressed(global.general_skey);
	}else
	{
	        lkey=keyboard_check(global.general_lkey);
	        lkeyp=keyboard_check_pressed(global.general_lkey);
	        lkeyr=keyboard_check_released(global.general_lkey);
	        rkey=keyboard_check(global.general_rkey);
	        rkeyp=keyboard_check_pressed(global.general_rkey);
	        rkeyr=keyboard_check_released(global.general_rkey);
	        ukey=keyboard_check(global.general_ukey);
	        ukeyp=keyboard_check_pressed(global.general_ukey);
	        ukeyr=keyboard_check_released(global.general_ukey);
	        dkey=keyboard_check(global.general_dkey);
	        dkeyp=keyboard_check_pressed(global.general_dkey);
	        dkeyr=keyboard_check_released(global.general_dkey);
	        akey=keyboard_check(global.general_akey);
	        akeyp=keyboard_check_pressed(global.general_akey);
	        akeyr=keyboard_check_released(global.general_akey);
	        bkey=keyboard_check(global.general_bkey);
	        bkeyp=keyboard_check_pressed(global.general_bkey);
	        bkeyr=keyboard_check_released(global.general_bkey);
	        xkey=keyboard_check(global.general_xkey);
	        xkeyp=keyboard_check_pressed(global.general_xkey);
	        skeyp=keyboard_check_pressed(global.general_skey);
	}
     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        



}
