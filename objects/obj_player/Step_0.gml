if place_meeting(x+move_x,y,obj_solid){
    while !place_meeting(x+sign(move_x),y,obj_solid){
        x += sign(move_x)
    }
    move_x = 0
}

var SOLID = instance_place(x,y+max(1,move_y),obj_platform)
if SOLID && bbox_bottom <= SOLID.bbox_top{
   if move_y > 0{
        while !place_meeting(x,y+sign(move_y),obj_platform){
            y += sign(move_y)
        }
        move_y = 0 
        jump = 0
   }
}

x += move_x
y += move_y

if move_y < 10{
    move_y += grv
}

if invincible || shield{
    if image_alpha > 0.1{
        image_alpha -= 0.05
    }else{
        image_alpha = 1
    }
}else{
    image_alpha = 1
}

if y > room_height+32{
    x = xstart
    y = ystart
    lives -= 1
}

if lives <= 0{
    audio_play_sound(sn_game_over,1,0)
    global.game_over = true
    room_goto(rm_menu)
}