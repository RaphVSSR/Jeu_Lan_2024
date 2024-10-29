
if global.hostName != noone && global.hostActive {
	global.shouldHostStop = true;
	
}else if global.hostName != noone && !global.hostActive{
	global.shouldPlayerQuit = true;	
}

obj_player.quitting = true;