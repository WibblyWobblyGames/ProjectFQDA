/*
player_spawn(room)
Correctly places player after going through a door
argument0 is the room the player is going to
*/

height = view_hview[0];
width = view_wview[0];

//rooms with bigger walls
if argument0 == 6 || argument0 == 8 || argument0 == 9 || argument0 == 10 || argument0 ==11 {
    if (global.dir_player == 'left'){
        //player went left, show up on right of room
        obj_player.x = width-116;
        obj_player.y = (height/2-7);
    }

    if (global.dir_player == 'right'){
        //player went right, show up on left of room
        obj_player.x = 112;
        obj_player.y = height/2 - 7 ;
    }
    if (global.dir_player == 'up'){
        //player went up, show up on bottom of room
        obj_player.x = (width/2);
        obj_player.y = height-112;
    }
    if (global.dir_player == 'down'){
        //player went down, show up on top of room
        obj_player.x = width/2;
        obj_player.y = 112;
    }
} else {

    if (global.dir_player == 'left'){
        //player went left, show up on right of room
        obj_player.x = width-80;
        obj_player.y = (height/2-7);
    }

    if (global.dir_player == 'right'){
        //player went right, show up on left of room
        obj_player.x = 80;
        obj_player.y = height/2 - 7 ;
    }
    if (global.dir_player == 'up'){
        //player went up, show up on bottom of room
        obj_player.x = (width/2);
        obj_player.y = height-80;
    }
    if (global.dir_player == 'down'){
        //player went down, show up on top of room
        obj_player.x = width/2;
        obj_player.y = 80;
    }
}
