function scr_FollowSet(){
    var key_hor,key_vert,key_speed,dir;
    key_hor = rkey - lkey;
    key_vert = dkey - ukey;
    key_speed = min(1,abs(key_hor)+abs(key_vert));
    dir = point_direction(0,0,key_hor,key_vert);
    if (mode=1) 
        {
            if (key_hor!=0)
            {
                for (var i = 39; i >= 0; i--;)  //Shift all 40 frames of x/y ghost trailing by however the player moved
               {
               prevX[i] += lengthdir_x(key_speed*spd,dir);
               }
            }
            if (key_vert!=0)
            {
                for (var i = 39; i >= 0; i--;)  //Shift all 40 frames of x/y ghost trailing by however the player moved
               {
                prevY[i] += lengthdir_y(key_speed*spd,dir);
                }
            }
        }
        else if (rkey) || (lkey) || (ukey) || (dkey)
        {
        //Shift all the X/Y previous positions down the bank
                for (var i = 39; i > 0; i--;)
                   {
                   prevX[i] = prevX[i-1];
                   prevY[i] = prevY[i-1];
                   }
                //Finally, store X/Y in the first position
                prevX[0] = x+spd;
                prevY[0] = y+spd;           
         }
        
    
    
    if global.playerDamage!=0
    {
        for (var i = 39; i > 0; i--;)
           {
               prevX[i] = x;
               prevY[i] = y;
           }
    }
}