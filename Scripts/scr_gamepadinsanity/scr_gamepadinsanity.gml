function scr_gamepadinsanity() {
	//Insanity
	if gamepad_button_check_pressed(gamepadNumber, gp_padu)
	    {
	        GPbutton=gp_padu
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_padd)
	    {
	        GPbutton=gp_padd
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_padl)
	    {
	        GPbutton=gp_padl
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_padr)
	    {
	        GPbutton=gp_padr
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_face1)
	    {
	        GPbutton=gp_face1
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_face2)
	    {
	        GPbutton=gp_face2
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_face3)
	    {
	        GPbutton=gp_face3
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_face4)
	    {
	        GPbutton=gp_face4
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_shoulderl)
	    {
	        GPbutton=gp_shoulderl
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_shoulderr)
	    {
	        GPbutton=gp_shoulderr
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_shoulderlb)
	    {
	        GPbutton=gp_shoulderlb
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_shoulderrb)
	    {
	        GPbutton=gp_shoulderrb
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_select)
	    {
	        GPbutton=gp_select
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_start)
	    {
	        GPbutton=gp_start
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_stickl)
	    {
	        GPbutton=gp_stickl
	    }
	else if gamepad_button_check_pressed(gamepadNumber, gp_stickr)
	    {
	        GPbutton=gp_stickr
	    }
	else GPbutton=0


}
