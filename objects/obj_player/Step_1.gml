var xx = keyboard_check(vk_right)-keyboard_check(vk_left)
move_x = xx*hspd

if keyboard_check_pressed(vk_up){
    if jump == 0{
        move_y = -vspd
        jump += 1
    }else
    if double_jump && jump == 1{
        move_y = -vspd
        jump += 1
    }
}