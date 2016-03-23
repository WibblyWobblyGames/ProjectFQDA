//Attack for princess
//Player attacks when space is pressed

with (obj_player) {
    if (keyboard_check(vk_space)) {
        attacking = true;
        
        var attack_instance;
        
        if (attack == "right") {
            sprite_index = asset_get_index(player_sprite+'_attack');
            image_speed = 0.5;
            attack_instance = instance_create(obj_player.x, obj_player.y, attack_object);
        } else if (attack == "left") {
            sprite_index = asset_get_index(player_sprite+'_attack');
            attack_instance = instance_create(obj_player.x, obj_player.y, attack_object);
            attack_instance.image_xscale = -1;
        }
        
        image_speed = 0.5;
        attack_instance.image_speed = 0.5;
        alarm[0] = 8;
    }
}

