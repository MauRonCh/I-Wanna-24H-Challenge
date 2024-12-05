event_inherited();

hspd = 0;
vspd = 0;
ypos = y;

var rooms = {};
// Stage1
rooms[$ rGuilleS4] = sprPlatformGS4;
rooms[$ rGuilleS4_2] = sprPlatformGS4;
rooms[$ rGuilleS4_3] = sprPlatformGS4;
rooms[$ rGuilleS4_4] = sprPlatformGS4;
rooms[$ rGuilleBossPrev] = sprPlatformGS4;

if (variable_struct_exists(rooms, room)) {
    sprite_index = rooms[$ room];
}
