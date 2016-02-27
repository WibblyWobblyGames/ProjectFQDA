
height = view_hview[0];
width = view_wview[0];
show_debug_message(global.dir_player);

if (global.dir_player == 'left'){
    //player went left, show up on right of room
    obj_player.x = width-80;
    obj_player.y = (height/2);
}

//CHANGE SPRITE SIDE ??
//FIX
if (global.dir_player == 'right'){
    //player went right, show up on left of room
    obj_player.x = 100;
    obj_player.y = height/2 ;
}
if (global.dir_player == 'up'){ //FIX
    //player went up, show up on bottom of room
    obj_player.x = (width/2);
    obj_player.y = height-80;
}
if (global.dir_player == 'down'){
//FIX
    //player went down, show up on top of room
    obj_player.x = width/2;
    obj_player.y = 96;
}
