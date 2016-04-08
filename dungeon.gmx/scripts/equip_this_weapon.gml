///equip_this_weapon()

with(obj_player) {
    equipped_weapon = other.object_index;
    primary_attack = other.primary_attack;
    secondary_attack = other.secondary_attack;
    
    scr_text(other.flavour_text, 0.75, room_width/2 - 50, room_height-100);
    alarm[10] = 120;
}

instance_destroy();
