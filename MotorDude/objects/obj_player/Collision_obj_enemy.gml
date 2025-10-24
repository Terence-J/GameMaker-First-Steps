effect_create_above(ef_firework,x ,y ,1 ,c_maroon);
audio_play_sound(snd_pDeath, 0, false, 1, 0, random_range(0.7, 1.1));
audio_play_sound(snd_crash, 0, false);

instance_destroy();


obj_game.alarm[0] = 120;