    var chamber = obj_game.bullet_chamber;

    // Determine which frame to use for each bullet slot
    var frame1 = (chamber >= 1) ? 0 : 1;
    var frame2 = (chamber >= 2) ? 0 : 1;

    // Draw the bullet sprites
    draw_sprite(spr_hudBullet, frame1, 162, 0);
    draw_sprite(spr_hudBullet, frame2, 194, 0);