//Attack for princess
//Player attacks when space is pressed

var attack_speed = 0.125;
var animation_time = 12 * (1/attack_speed);

with (obj_player) {
    if (!attacking and keyboard_check(vk_space)) {
        attacking = true;
        
        var attack_instance = instance_create(obj_player.x, obj_player.y, primary_attack);
        attack_instance.image_speed = attack_speed;
        attack_instance.image_index = 0;
        
        sprite_index = asset_get_index(player_sprite+'_attack');
        image_index = 0;
        image_speed = attack_speed;
        
        if (attack == "left") {
            attack_instance.image_xscale = -1;
        }
        
        if (secondary_attack != noone) {
            var secondary_attack_instance = instance_create(obj_player.x, obj_player.y, secondary_attack);
            secondary_attack_instance.image_speed = attack_speed;
        
            if (attack == "left") {
                secondary_attack_instance.image_xscale = -1;
            }
            
            secondary_attack_instance.alarm[0] = animation_time;
        }
        
        alarm[0] = animation_time;
        attack_instance.alarm[0] = animation_time;
    }
}

