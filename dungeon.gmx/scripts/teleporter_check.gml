/* 
Called when a room is cleared. Checks if all rooms have been cleared.
Do nothing if all rooms aren't cleared.
*/

if global.rooms_cleared == 10 {
    //all rooms are cleared, add door to teleporter to boss room
    instance_create(208, 168, obj_teleporter_working);
    //instance_deactivate_object(obj_teleporter);
    door = instance_create(208, 168, obj_boss_door);
    door.image_yscale = .4;
    door.image_xscale = 2;
}

