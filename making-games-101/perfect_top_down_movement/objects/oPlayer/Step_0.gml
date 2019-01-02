// Player Movement
var xDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var yDir = keyboard_check(ord("S")) - keyboard_check(ord("W"))

x += xDir * walksp
y += yDir * walksp

// Player Death
image_alpha = hp/100 //make it alpha as it get damaged

if (hp <= 0) game_end()