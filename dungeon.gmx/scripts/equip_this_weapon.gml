///equip_this_weapon()

with(obj_player) {
    equipped_weapon = other.object_index;
    attack_object = other.attack_object;
    /*
    switch(equipped_weapon) {
        case obj_straight_sword:
            attack_object = obj_straight_sword_attack;
            break;
        case obj_thunderfury:
            attack_object = obj_thunderfury_attack;
            break;
    }*/
}

instance_destroy();
