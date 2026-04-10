/// @description 
 var xx=camera_get_view_x(view_camera[0]);
    var yy=camera_get_view_y(view_camera[0]);
instance_create_depth(xx+random_range(40,200),yy-50,0,Enemy1A);
toSpawn--;
if toSpawn<=0{instance_destroy();}else{alarm[0]=5;}