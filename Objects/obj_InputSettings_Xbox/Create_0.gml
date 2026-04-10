//===EDIT THIS SECTION===
//Define .ini file to work with
iniName="inputX.ini"
writeSection="Player InputX"
previousRoom=room
//Initialize Arrays
key_num=7; //number of options
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
inputArray[0]=gp_padu
inputArray[1]=gp_padd
inputArray[2]=gp_padl
inputArray[3]=gp_padr
inputArray[4]=gp_start
inputArray[5]=gp_face1
inputArray[6]=gp_face2
inputArray[7]=gp_face3
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
MenuUp=gp_padu
MenuDown=gp_padd
MenuSelect=gp_start;
MenuQuit=gp_select;
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