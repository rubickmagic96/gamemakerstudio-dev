// Player Movement
var xDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var yDir = keyboard_check(ord("S")) - keyboard_check(ord("W"))

hsp = xDir * walksp
vsp = yDir * walksp

// Horizontall Collision
if (place_meeting(x+hsp, y, oWall)) {
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp)
	}
	hsp = 0
}

x += hsp

// Vertical Collision
if (place_meeting(x, y+vsp, oWall)) {
	while(!place_meeting(x, y+sign(vsp), oWall)) {
		y = y + sign(vsp)
	}
	vsp = 0
}

y += vsp