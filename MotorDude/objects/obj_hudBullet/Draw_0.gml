if instance_exists(obj_player) {
	if obj_player.bullet_chamber != 0{
		if obj_player.bullet_chamber = 2{
			draw_sprite(spr_hudBullet, 0, 162, 0);
			draw_sprite(spr_hudBullet, 0, 194, 0);
		}
		else if obj_player.bullet_chamber = 1{
			draw_sprite(spr_hudBullet, 0, 162, 0);
			draw_sprite(spr_hudBullet, 1, 194, 0);
		}
	}
	else{
		draw_sprite(spr_hudBullet, 1, 162, 0);
		draw_sprite(spr_hudBullet, 1, 194, 0);
	}
}