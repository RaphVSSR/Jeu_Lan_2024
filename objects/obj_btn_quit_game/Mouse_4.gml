
if global.hostName != noone && global.hostActive {
	hostStop();
	
}else if global.hostName != noone && !global.hostActive{
	playerQuit();
}

obj_player.quitting = true;