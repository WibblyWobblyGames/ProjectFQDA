/*
special_door_create(currentRoom, doorSide);
This function is called when the current room is a special room
It creates only allowed doors
argument0 is the value of the current room
argument1 is the door side (up, down, left, right)
*/

//find the correct room
switch(argument0){
    case 'a': //start room
        switch(argument1){
            case 'down':
                if ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'b'{
                    door = instance_create(view_wview[0]/2, view_hview[0]-49, obj_door);
                    door.sprite_index = spr_blue_door;
                    door.image_angle = 180;
                }
                break;
        } 
        break;
    case 'b': //rm_6/bedroom
        switch(argument1){
            case 'down':
                if ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'a' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'c'{
                    door = instance_create(view_wview[0]/2, view_hview[0]-81, obj_door);
                    door.sprite_index = spr_bedroom_door;
                    door.image_angle = 180;
                } else {
                    //create wall
                    wall = instance_create(view_wview[0]/2 - 16, view_hview[0] - 104, obj_wall);
                    wall.image_yscale = 1.25;
                }
                break;
            case 'left':
                if ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1) != 'a' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1) != 'c'{
                    door = instance_create(81, view_hview[0]/2, obj_door);
                    door.sprite_index = spr_bedroom_door;
                    door.image_angle = 90;
                } else {
                    wall = instance_create(72, view_hview[0]/2-32, obj_wall); //40
                    wall.image_yscale = 2; 
                    wall.image_xscale = 1.25;
                    wall.x -= 8
                }
                break;
            case 'right':
                if ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1) != 'a' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1) != 'c' {
                    door = instance_create(view_wview[0]-81, view_hview[0]/2, obj_door);
                    door.sprite_index = spr_bedroom_door;
                    door.image_angle = 270;
                } else {
                    wall = instance_create(view_wview[0]-104, view_hview[0]/2 - 32, obj_wall);
                    wall.image_yscale = 2; 
                    wall.image_xscale = 1.25
                }
                break;
        }
        break;
    case 'c': //shrine
        switch(argument1){
            case 'down':
                if ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'b'{
                    door = instance_create(view_wview[0]/2, view_hview[0]-81, obj_door);
                    door.sprite_index = spr_shrine_door;
                    door.image_angle = 180;
                } else {
                    wall = instance_create(view_wview[0]/2 - 16, view_hview[0] - 104, obj_wall);
                }
                break;
        }
        break;
    case 6: //prison
    case 7: //rm_7
    case 8: //rm_8
        switch(argument1){
            case 'down':
                if ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'x' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'a' &&
                        ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 'c'{
                    door.image_angle = 180;
                    door = instance_create(view_wview[0]/2, view_hview[0]-81, obj_door);
                    if argument0 == 6  || argument0 == 7{    
                         door.sprite_index = spr_prison_door;
                    } else if argument0 == 8 {
                        door.sprite_index = spr_shrine_door;
                    }
                }
                break;
            case 'up':
                break;
            case 'right':
                break;
            case 'left':
                break;
        }

}
