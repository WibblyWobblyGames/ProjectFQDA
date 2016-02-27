/*  
seraches the global.mapOfRooms ds grid for a given location with the value of argument0
that is beside at least 1 other room.
*/

//makes random() actually random - comment out for debugging
//randomize();

success = false;

while !success {
    //get random x, y values
    check = argument0;
    xval = ceil(random(global.numRooms));
    yval = ceil(random(global.numRooms));

    if (ds_grid_get(global.mapOfRooms, xval, yval) == check)
        //check sides for a value that isn't check
        if (ds_grid_get(global.mapOfRooms, xval+1, yval) != check) || (ds_grid_get(global.mapOfRooms, xval-1, yval) != check) ||
           (ds_grid_get(global.mapOfRooms, xval, yval+1) != check) || (ds_grid_get(global.mapOfRooms, xval, yval-1) != check){
            //there is a room connected, we can place this room here
            success = true;
        }
}
vals[0] = xval;
vals[1] = yval;
return vals;
