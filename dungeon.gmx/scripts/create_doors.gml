//creates doors in the current room

//check left
if (ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]-1) != 0) {
    //create left door
    //show_debug_message("left");
    instance_create(32, view_hview[0]/2 - 16, obj_door);
}
//check right
if (ds_grid_get(global.mapOfRooms, global.location_player[0], global.location_player[1]+1) != 0) {
    //create right door
    //show_debug_message("right");
    instance_create(view_wview[0]-64, view_hview[0]/2-16, obj_door);
}
//check down
if (ds_grid_get(global.mapOfRooms, global.location_player[0]+1, global.location_player[1]) != 0) {
    //create down door
    //show_debug_message("down");
    instance_create(view_wview[0]/2-16, view_hview[0]-64, obj_door);
}
//check up
if (ds_grid_get(global.mapOfRooms, global.location_player[0]-1, global.location_player[1]) != 0) {
    //create up door
    //show_debug_message("up");
    instance_create(view_wview[0]/2 - 16, 32, obj_door);
}

