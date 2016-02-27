//create a map of all rooms to numbers for the room grid
global.rooms = ds_map_create();
ds_map_add(global.rooms, 0, "no room - door error");
ds_map_add(global.rooms, 1, rm_start);
ds_map_add(global.rooms, 2, rm_1);
ds_map_add(global.rooms, 3, rm_2);
ds_map_add(global.rooms, 4, rm_3);
ds_map_add(global.rooms, 5, rm_4);
ds_map_add(global.rooms, 6, rm_5);
ds_map_add(global.rooms, 7, rm_boss);
