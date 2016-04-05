///on_enemy_death()
// Called right before enemy dies, so it's still included in count
var enemies_left_in_room = 0;

with (obj_enemy_parent) {
    enemies_left_in_room += 1;
}

if (enemies_left_in_room == 1) {
    spawn_weapon(x, y);
    global.rooms_cleared ++;
}
