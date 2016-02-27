/*
Creates the map of the rooms for the playthrough
*/
//number rooms to build
global.numRooms = 6;
n = global.numRooms;
//any special rooms
special = 0;
//create grid with all zeros, set middle to 1 (this is start room)
global.mapOfRooms = ds_grid_create((2*n)+1,(2*n)+1);
ds_grid_clear(global.mapOfRooms, 0);
ds_grid_set(global.mapOfRooms, n, n, 1);
//give player location of start room - ceil(2*n/2)
global.location_player[0] = n;
global.location_player[1] = n;

for(i = 2; i <= n - special; i++){
    //search grid for a valid room location randomly
    vals[] = search_grid(0);
    //ds_grid_set() all those to a room (randomly or i if not) write function
    ds_grid_set(global.mapOfRooms, vals[0], vals[1], i);
}

print_map();
