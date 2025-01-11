if obj_player.magnet && distance_to_object(obj_player) < 30{
    magnet = true
}

if magnet{
    move_towards_point(obj_player.x,obj_player.y-16,2)
}