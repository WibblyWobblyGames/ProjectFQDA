///on_enemy_death()
// Called right before enemy dies, so it's still included in count
var enemies_left_in_room = instance_number(object_index);

if (enemies_left_in_room == 1) {
    spawn_weapon();
}
