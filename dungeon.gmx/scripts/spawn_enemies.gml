/*
spawn_enemies(Num_Enemies)
This function spawns a number of enemies, given by Num_Enemies into a room.
Enemies are decided randomly, until Num_enemies is reached
*/

i = 0;
while (i < argument0){
    //pick enemy. Add any new enemies into the list
    var enemy = choose(obj_shadow, obj_robot,obj_mimic, obj_ninja);

    //choose random location in the room
    var enemy_y = random(view_hview[0]);
    var enemy_x = random(view_wview[0]);
    if place_empty(enemy_x, enemy_y){
        i++;
        //spawn enemy
        instance_create(enemy_x, enemy_y, enemy);
    }
}
