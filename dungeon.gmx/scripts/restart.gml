//consolidate everything that happens on restart here
//show_debug_message("RESTARTED");
audio_stop_all();
//clear grid, map
ds_grid_destroy(global.mapOfRooms);
ds_map_destroy(global.rooms);

game_restart();
