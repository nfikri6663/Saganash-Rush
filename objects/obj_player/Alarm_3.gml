randomize()
var rock = instance_create_depth(random(room_width),-48,-1,obj_rock)
rock.vspeed = 1
alarm[3] = 60*(6-global.level)