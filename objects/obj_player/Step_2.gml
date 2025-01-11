if move_x != 0{
    image_speed = 1
    image_xscale = sign(move_x)
}else{
    image_speed = 0
    image_index = 0
}

if speed_boost{hspd = 4}else{hspd = 2}