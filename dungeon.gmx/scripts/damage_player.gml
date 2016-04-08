///damage_player(dmg)
// Deals specified amount of damage to player if player is not currently invincible.

var dmg = argument0;

with (obj_player) {
    if (!invincible) {
        health_player -= dmg;
    }
}
