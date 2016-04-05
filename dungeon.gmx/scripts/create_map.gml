/*
Creates the map of the rooms for the playthrough
There cannot be more than one of each room
*/

//number rooms to build including specials
global.numRooms = 13;
n = global.numRooms;
//any special rooms
special = 3;
//create grid filled with x's
global.mapOfRooms = ds_grid_create((2*n)+1,(2*n)+1);
ds_grid_clear(global.mapOfRooms, 'x');
ds_grid_set(global.mapOfRooms, n, n, 1);

for(i = 2; i <= n - special; i++){
    show_debug_message(string(i));
    //search grid for a valid room location randomly
    vals[] = search_grid('x');
    //add room i to map 
    ds_grid_set(global.mapOfRooms, vals[0], vals[1], i);
}
/*
//set prison
vals[] = search_grid('x');
//prison can go anywhere
ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'd');

//set rm_7
vals[] = search_grid('x');
//rm_7 can go anywhere
ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'e');

//set rm_8
vals[] = search_grid('x');
//rm_8 can go anywhere
ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'f');
*/
//set start room
found = false;
while !found {
    vals[] = search_grid('x');
    //start room can only go above a room that can have an up door
    if !(is_string(ds_grid_get(global.mapOfRooms, vals[0] + 1, vals[1]))){
        ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'a'); 
        //set player location
        global.location_player[0] = vals[0];
        global.location_player[1] = vals[1];
        found = true;
    }
}

//set shrine
found = false;
while !found {
    vals[] = search_grid('x');
    //shrine can only go above a room that can have an up door
    if !(is_string(ds_grid_get(global.mapOfRooms, vals[0] + 1, vals[1]))){
        ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'c');
        found = true;
    }
}
//set bedroom (rm_6)
found = false;
while !found {
    vals[] = search_grid('x');
    //bedroom can go to the left, right, or above something with left, right, or up door(s).
    if !is_string(ds_grid_get(global.mapOfRooms, vals[0], vals[1]+1)) || 
    !is_string(ds_grid_get(global.mapOfRooms, vals[0]+1, vals[1])) || 
    !is_string(ds_grid_get(global.mapOfRooms, vals[0], vals[1]-1)) {
        ds_grid_set(global.mapOfRooms, vals[0], vals[1], 'b');
        found = true;
    }
}

//print out the map of the rooms
print_map();
