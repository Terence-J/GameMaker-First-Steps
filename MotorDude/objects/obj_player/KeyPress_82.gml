obj_game.bullet_chamber = 2;
audio_play_sound(snd_reload, 0, false, 1, 0, random_range(0.9, 1.4));

obj_game.can_shoot = false;
obj_game.alarm[2] = 30;