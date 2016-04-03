///spawn_weapon(x, y)
var spawn_x = argument0;
var spawn_y = argument1;

var size = ds_list_size(global.weapons_list);

var index = irandom(size - 1);

instance_create(spawn_x, spawn_y, ds_list_find_value(global.weapons_list, index));
