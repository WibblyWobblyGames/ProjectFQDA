//Attack for princess
//Player attacks when space is pressed

with (obj_player) {
    if (!attacking and keyboard_check(vk_space)) {
        attacking = true;
        
        sprite_index = asset_get_index(player_sprite+'_attack');
        image_speed = 0.5;
        
        var attack_instance = instance_create(obj_player.x, obj_player.y, primary_attack);
        attack_instance.image_speed = 0.5;
        
        if (attack == "left") {
            attack_instance.image_xscale = -1;
        }
        
        if (secondary_attack != noone) {
            var secondary_attack_instance = instance_create(obj_player.x, obj_player.y, secondary_attack);
            secondary_attack_instance.image_speed = 0.5;
        
            if (attack == "left") {
                secondary_attack_instance.image_xscale = -1;
            }
        }
        
        alarm[0] = 8;
    }
}

