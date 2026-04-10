view_camera[0]=camera_create_view(x,y,240,320,0,Camera_Main,-1,-1,240,320);
instance_create_depth(x-45,y+180,0,Player1_Spawn);
instance_create_layer(0,0,"Extra",Hud_Set);
//instance_create_depth(x,y,0,MainSpawner_Carivan1);
image_alpha=0;
yPos=0;
alarm[0]=1;
point=0;
limitMin=0;
limitMax=room_width;
viewdist=room_width/2;

oxpos=x; //The position the camera starts at
xpos=0;

player=Player_Parent; //define player
scrollmulti=4; // how wide the scroll area will be, decrease this number to prevent the player from scrolling, increase it to make the area wider, you can do this on the fly
