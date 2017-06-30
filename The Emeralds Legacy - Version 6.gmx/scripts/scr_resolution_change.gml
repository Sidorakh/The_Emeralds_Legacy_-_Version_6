///scr_resolution_change(resX,resY,fullscreen,aa_level, vsync);
var rm =  room_first;
while room_exists(rm)
{
    room_set_view_enabled(rm,true);
    room_set_view(rm,0,1,0,0,argument0,argument1,0,0,argument0,argument1,0,0,-1,-1,noone);
    rm = room_next(rm);
}
display_reset(argument3,argument4);
window_set_fullscreen(argument2);
