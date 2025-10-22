var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);

var moon = .9;
var sky = .9;
var f_hill = .5;
var c_hill = .3;

draw_sprite_tiled(bg_1, 1, camX * sky, camY * sky);
draw_sprite_tiled(bg_1, 0, camX * moon, camY * moon);
draw_sprite_tiled(bg_1, 2, camX * f_hill, camY * f_hill);
draw_sprite_tiled(bg_1, 3, camX * c_hill, camY * c_hill);
draw_sprite_tiled(bg_1, 4, camX, camY);