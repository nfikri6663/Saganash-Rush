if !invincible && !shield{
    audio_play_sound(sn_hurt,1,0)
    move_y = -4
    lives -= 1
    invincible = true
    alarm[1] = 60*3
}