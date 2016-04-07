/* 
Called when entering the teleport room. Checks if all rooms have been cleared.
Do nothing if all rooms aren't cleared.
*/

if global.rooms_cleared == 1 { // set this to how many rooms have enemies that must be cleared
    // all rooms are cleared, add door to teleporter to boss room
    instance_create(208, 168, obj_teleporter_working);
    instance_deactivate_object(obj_teleporter);
    door = instance_create(208, 168, obj_boss_door);
    door.image_yscale = .4;
    door.image_xscale = 2;
}
//10
