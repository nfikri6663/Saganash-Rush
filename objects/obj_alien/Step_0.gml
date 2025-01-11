if !place_meeting(x+move_x*32,y+1,obj_platform){
    move_x *= -1
}

if place_meeting(x,y+move_y,obj_platform){
    while !place_meeting(x,y+sign(move_y),obj_platform){
        y += sign(move_y)
    }
    move_y = 0
}

x += move_x
y += move_y

if move_y < 10{
    move_y += grv
}