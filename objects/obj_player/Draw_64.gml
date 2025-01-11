for (var i = 0; i < lives; i++) {
    draw_sprite(spr_heart,0,32+36*i,32)
}
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fn_ui)
draw_set_color(c_white)
draw_text(160,32,$"Score: {score}")