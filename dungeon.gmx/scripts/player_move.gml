//Movement code for player
//When Keyboard is pressed, move player in direction
//Checks for collisions with wall objects 
with (obj_player) {
    if (attacking or (!keyboard_check(vk_left) and !keyboard_check(vk_right) and !keyboard_check(vk_up) and !keyboard_check(vk_down))) {
        if (!attacking) {
            sprite_index = asset_get_index(player_sprite + '_idle');
        }
        
        speed = 0;
    } else {
        var run_sprite = asset_get_index(player_sprite + '_run');
        var mv_speed = 5;
        
        if (keyboard_check(vk_left)) {
            direction = 180;
            speed = mv_speed;
            
            sprite_index = run_sprite;
            image_xscale = -1;
            attack = "left";
        }    
        
        if (keyboard_check(vk_right)) {
            direction = 0;
            speed = mv_speed;
            
            sprite_index = run_sprite;
            image_xscale = 1;
            attack = "right";
        }    
        
        if (keyboard_check(vk_up)) {
            direction = 90;
            speed = mv_speed;

            sprite_index = run_sprite;
        }    
        
        if (keyboard_check(vk_down)) {
            direction = 270;
            speed = mv_speed;
            
            sprite_index = run_sprite;
        }    
    }
    
//Collision script from: https://www.youtube.com/watch?v=IysShLIaosk&feature=youtu.be    
//Horizontal Collision
if (place_meeting(x+hspeed,y,obj_collision_parent))
    {
        while(!place_meeting(x+sign(hspeed),y,obj_collision_parent))
        {
            x += sign(hspeed);
        }
        hspeed = 0;
    }

//Vertical Collision
if (place_meeting(x,y+vspeed,obj_collision_parent))
    {
     while(!place_meeting(x,y+sign(vspeed),obj_collision_parent))
      {
            y += sign(vspeed);
     }
     vspeed = 0;
    }
}
