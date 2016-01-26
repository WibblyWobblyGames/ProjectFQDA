//usage:  grid_snap(speed,snap)
//speed is how fast
//grid is what to snap to, like
//16 in pokemon games
//or 32. . .it all depends
//http://gmc.yoyogames.com/index.php?showtopic=431356
spd=argument1
if place_snapped(spd, spd){
if keyboard_check(vk_left){
direction=180
speed=argument0
}
if keyboard_check(vk_right){
direction=0
speed=argument0
}
if keyboard_check(vk_up){
direction=90
speed=argument0
}
if keyboard_check(vk_down){
direction=270
speed=argument0
}
}


nokeys=
(!keyboard_check(vk_up))&&
(!keyboard_check(vk_down))&&
(!keyboard_check(vk_left))&&
(!keyboard_check(vk_right))

if (place_snapped(spd,spd)) //Checks if the obj is snapped
&& (nokeys) //and that no keys are pressed
{
speed=0
//image_index = 1
}
