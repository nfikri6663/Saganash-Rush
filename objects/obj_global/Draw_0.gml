if room == rm_menu{
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    if !global.game_over && !global.win{
        draw_set_color(c_white)
        draw_set_font(fn_ui)
        draw_text(room_width/2,room_height/2,"SAGANASH\nRUSH")
        draw_set_font(fn_menu)
        draw_set_color(c_green)
        draw_text(room_width/2,room_height-40,"Press SPACE to start playing the game")
        draw_set_color(c_red)
        draw_text(room_width/2,room_height-20,"Press ESCAPE to exit the game")
        
        if keyboard_check_pressed(vk_space){
            room_goto(rm_lv1)
        }
        
        if keyboard_check_pressed(vk_escape){
            game_end()
        }
    }else
    if global.game_over{
        draw_set_color(c_white)
        draw_set_font(fn_ui)
        draw_text(room_width/2,room_height/2,"GAME\nOVER")
        draw_set_font(fn_menu)
        draw_set_color(c_green)
        draw_text(room_width/2,room_height-40,"Press SPACE to restart the game")
        draw_set_color(c_red)
        draw_text(room_width/2,room_height-20,"Press ESCAPE to return to the main menu")
        
        if keyboard_check_pressed(vk_space){
            room_goto(rm_lv1)
        }
        
        if keyboard_check_pressed(vk_escape){
            game_restart()
        }
    }else
    if global.win{
        draw_set_color(c_white)
        draw_set_font(fn_ui)
        draw_text(room_width/2,room_height/2,"YOU\nWIN")
        draw_set_font(fn_menu)
        draw_set_color(c_green)
        draw_text(room_width/2,room_height-40,"Press SPACE to restart the game")
        draw_set_color(c_red)
        draw_text(room_width/2,room_height-20,"Press ESCAPE to return to the main menu")
        
        if keyboard_check_pressed(vk_space){
            room_goto(rm_lv1)
        }
        
        if keyboard_check_pressed(vk_escape){
            game_restart()
        }
    }
}