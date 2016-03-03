//prints the ds_grid, global.mapOfRooms, for debugging to the console
str = ''
for (k = 0; k<(2*global.numRooms)+1; k++) {
    for (j = 0; j < (2*global.numRooms)+1; j++) {
        str = str + string(ds_grid_get(global.mapOfRooms, k, j));
    }
    show_debug_message(str);
    str = ''
    
}
