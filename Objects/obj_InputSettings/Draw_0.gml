var i
var gp=gamepad_get_device_count();
        key_down=keyboard_check_pressed(MenuDown);
        key_up=keyboard_check_pressed(MenuUp);
        key_select=keyboard_check_pressed(MenuSelect);
        key_quit=keyboard_check_pressed(MenuQuit);

//Colors and Fonts
draw_set_color(textColorNormal);
draw_set_font(textFontNormal);

//Menu Controls
if state=CMStates.Selecting && windowActive=true{
    if key_down{
        if optionSelected < key_num-1{
            optionSelected+=1;
        }
    }
    if key_up{
        if optionSelected > 0{
            optionSelected-=1;
        }
    }
    if key_select{
        state=CMStates.KeyReleaseCheck;
    }
    if key_quit{
        state=CMStates.Exiting;
    }
}
if state=CMStates.KeyReleaseCheck{
    if !keyboard_check(vk_anykey)
    {
        timer0+=1;
        if timer0=2
        {
            timer0=0;
            state=CMStates.ReadingInput;
        }
    }
}
if state=CMStates.ReadingInput{
    for (var i=gp_face1;i<gp_axisrv;i++){
        if (gamepad_button_check(gamepadNumber,i)){
            GPbutton=i
        };
    }
    if keyboard_key!=0{
        inputArray[optionSelected]=keyboard_key;
        state=CMStates.Selecting;
    }
    if GPbutton!=0{
        inputArray[optionSelected]=GPbutton;
        state=CMStates.Selecting;
        GPbutton=0;
    }
}
if state=CMStates.Exiting{
    ini_open(iniName);
    for (i=0;i<key_num;i++)
    {
        ini_write_real(writeSection, inputName[i], inputArray[i]);
    }
    ini_close();
    Title_Logo.image_alpha=1;
    instance_create_depth(x+30,y,depth,Menu_Options);
    scr_shite("Player Input");
    instance_destroy();
}

//Draw Input List
for (var i=0; i<key_num;i++;)
    {
        textDisplay=string(inputName[i]) + " : [ " + string(scr_recognizeInput(inputArray[i])) + " ]";
        if i=optionSelected{
                draw_set_color(textColorSelected);
            }
        draw_text(originX+textSkew,originY+(i*gapSize),textDisplay);
        draw_set_color(textColorNormal);
    }
if state=CMStates.ReadingInput
    {
        draw_text(originX+textSkew,originY+((key_num+2)*gapSize),"Set the " + string(inputName[optionSelected]) + " key");
    }
//Draw Cursor
for (var i = 0; i <=key_num-1; i++;)
    {
        if i=optionSelected
            {
                textDisplay=">>";
                draw_text(originX+textSkew-(gapSize*2),originY+(i*gapSize),textDisplay);
            }
    }

    for (var i=gp_face1;i<gp_axisrv;i++){
        if (gamepad_button_check(gamepadNumber,i)){
            GPinputcheck=i
        };
    }
        
draw_text(originX+textSkew,originY-(2*gapSize),"[" + topText + "]");

draw_set_halign(fa_center);
draw_text(120,260,"Up/Down:Move SPACE:Bind\nBACKSPACE:Exit");
draw_set_color(c_white);
draw_set_halign(fa_left);
