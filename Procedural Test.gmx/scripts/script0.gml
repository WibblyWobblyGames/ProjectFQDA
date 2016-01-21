islands = 5;
map_width = 100;
map_height = 100;

var this_island, this_peninsula;
for(this_island = 0; this_island < islands; this_island += 1)
{
island_X[this_island] = random(map_width);
island_Y[this_island] = random(map_height);
island_aspect[this_island] = 0.5+random(1);
peninsulas[this_island] = choose(1,2,3,4);
for(this_peninsula = 0; this_peninsula < peninsulas[this_island]; this_peninsula += 1)
{
peninsula_magnitude[this_island,this_peninsula] = 0.5 + random(0.5);
// The "position" is actually an angle between 0 and 360 degrees:
peninsula_position[this_island,this_peninsula] = random(360);
}
}
// Then after the general shape of the islands is decided, use a pixel generator to build an image of the islands.
