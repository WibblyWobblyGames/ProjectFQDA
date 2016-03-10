//creates doors in the current room. Call in the creation code of every room.

//check left
if is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1])){
    special_door_create(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]),'left');
} else if !is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1)) || 
                ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1) == 'b'{
    //create left door
    //show_debug_message("left");
    door = instance_create(49, view_hview[0]/2, obj_door);
    door.sprite_index = spr_blue_door;
    door.image_angle = 90;
} else {
    //create wall
    wall = instance_create(32, view_hview[0]/2-32, obj_wall); //40
    wall.image_yscale = 2;  
    wall.image_xscale = 1.25;
}
//check right
if is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1])){
    special_door_create(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]),'right');
} else if !is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1)) ||
                ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1) == 'b' {
    //create right door
    //show_debug_message("right");
    door = instance_create(view_wview[0]-49, view_hview[0]/2, obj_door);
    door.sprite_index = spr_blue_door;
    door.image_angle = 270;
} else {
    //create wall
    wall = instance_create(view_wview[0]-72, view_hview[0]/2 - 32, obj_wall);
    wall.image_yscale = 2;  
    wall.image_xscale = 1.25;
}
//check down
if is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1])){
    special_door_create(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]),'down');
} else if !is_string(ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1])) {
    //create down door
    //show_debug_message("down");
    door = instance_create(view_wview[0]/2, view_hview[0]-49, obj_door);
    door.sprite_index = spr_blue_door;
    door.image_angle = 180;
} else {
    //create wall
    wall = instance_create(view_wview[0]/2 - 16, view_hview[0]-72, obj_wall);
    wall.image_yscale = 1.25
}
//check up
if is_string(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1])){
    special_door_create(ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]),'up');
} else if !is_string(ds_grid_get(global.mapOfRooms, global.location_player[0]-1, global.location_player[1])) ||
                ds_grid_get(global.mapOfRooms, global.location_player[0]-1, global.location_player[1]) == 'a' ||
                ds_grid_get(global.mapOfRooms, global.location_player[0]-1, global.location_player[1]) == 'b' ||
                ds_grid_get(global.mapOfRooms, global.location_player[0]-1, global.location_player[1]) == 'c' {
    //create up door
    //show_debug_message("up");
    door = instance_create(view_wview[0]/2, 49, obj_door);
    door.sprite_index = spr_blue_door;
    door.image_angle = 0;
} else {
    //create wall
    wall = instance_create(view_wview[0]/2 - 16, 32, obj_wall);
}

