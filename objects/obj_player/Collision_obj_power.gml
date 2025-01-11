audio_play_sound(sn_power,1,0)
if other.image_index == 0{shield = true}else
if other.image_index == 1{magnet = true}else
if other.image_index == 2{double_jump = true}else
if other.image_index == 3{speed_boost = true}else
if other.image_index == 4{if lives < 3{lives += 1}}
    
alarm[0] = 60*4
instance_destroy(other)