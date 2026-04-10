//===EDIT THIS SECTION===
//Define .ini file to work with
iniName="input.ini"
writeSection="Player Input"
previousRoom=room
//Initialize Arrays
key_num=8; //number of options
for (i=0;i<=key_num-1;i++){
        inputArray[i]=0;
    }
for (i=0;i<=key_num-1;i++){
        inputName[i]="Input Number";
    }
//Define Input Names
inputName[0]="Up"
inputName[1]="Down"
inputName[2]="Left"
inputName[3]="Right"
inputName[4]="Start"
inputName[5]="A Button/ Shoot"
inputName[6]="B Button/ Bomb"
inputName[7]="C Button/ Speed"
//Define Default Inputs
inputArray[0]=vk_up
inputArray[1]=vk_down
inputArray[2]=vk_left
inputArray[3]=vk_right
inputArray[4]=vk_enter
inputArray[5]=ord("Z")
inputArray[6]=ord("X")
inputArray[7]=ord("C")
//Draw Stuff
windowWidth=view_wport[0]
windowHeight=view_hport[0]
gapSize=10
textSkew=-100
originX=windowWidth/2
originY=windowHeight/2-gapSize*8
textFontNormal=f_Small
textColorNormal=c_white
textColorSelected=c_aqua
topText=writeSection
//Menu Navigation Buttons
MenuUp=vk_up
MenuDown=vk_down
MenuSelect=vk_space;
MenuQuit=vk_backspace;
//===END OF SECTION===





//Load stuff if it's saved
if (file_exists(iniName)){
    ini_open(iniName)
    if ini_section_exists(writeSection)
    {
        for (i=0;i<key_num;i++)
        {
            inputArray[i]=ini_read_real(writeSection, inputName[i], 69)
        }
    }
    ini_close()
}

//Menu States


//Initiate Gamepad
gp_num = gamepad_get_device_count();
gamepadNumber=0
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i) {
   gp[i]=true;
   gamepadNumber=i;
       }else{
       gp[i]=false
       }
   }
//Menu
windowActive=true
state=CMStates.Selecting
optionSelected=0
timer0=0
GPbutton=0
GPpressed=false
GPinputcheck=0