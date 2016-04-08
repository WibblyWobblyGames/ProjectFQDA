///equip_this_weapon()

with(obj_player) {
    equipped_weapon = other.object_index;
    primary_attack = other.primary_attack;
    secondary_attack = other.secondary_attack;
}

instance_destroy();
