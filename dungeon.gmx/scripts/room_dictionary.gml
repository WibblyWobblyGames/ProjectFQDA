//create a map of all rooms to numbers for the room grid
global.rooms = ds_map_create();

//normal rooms - these are the numbers that will show up in the map of the rooms
ds_map_add(global.rooms, 'x', "no room - door error");
ds_map_add(global.rooms, 1, rm_1);
ds_map_add(global.rooms, 2, rm_2);
ds_map_add(global.rooms, 3, rm_3);
ds_map_add(global.rooms, 4, rm_4);
ds_map_add(global.rooms, 5, rm_5);
ds_map_add(global.rooms, 6, rm_teleporter);

//special rooms (specific doors only)

ds_map_add(global.rooms, 'a', rm_start);
ds_map_add(global.rooms, 'b', rm_6);
ds_map_add(global.rooms, 'c', shrine);

