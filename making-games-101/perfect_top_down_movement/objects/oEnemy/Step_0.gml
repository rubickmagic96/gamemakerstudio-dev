// Enemy Death
if (hp <= 0) {
	instance_destroy()
	global.scr += 2
}

// Head Towards Player
mp_potential_step(oPlayer.x, oPlayer.y, enemySpeed, true)