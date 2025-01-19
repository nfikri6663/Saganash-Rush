if move_x != 0{
    image_speed = 1
    flip = sign(move_x)*image_xscale
}else{
    image_speed = 0
    image_index = 0
}

if speed_boost{hspd = 4}else{hspd = 2}