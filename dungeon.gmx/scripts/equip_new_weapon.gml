///equip_new_weapon(weapon)

global.equipped_weapon = argument0.object_index;

switch(argument0.object_index) {
    case obj_straight_sword:
        global.attack_object = obj_straight_sword_attack;
        break;
    case obj_thunderfury:
        global.attack_object = obj_thunderfury_attack;
        break;
}