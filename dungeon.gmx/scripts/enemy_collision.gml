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

