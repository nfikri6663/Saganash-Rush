if visible{
    if room != rm_lv5{
        room_goto_next()
        global.level += 1
    }else{
        audio_play_sound(sn_win,1,0)
        global.win = true
        room_goto(rm_menu)
    }
}