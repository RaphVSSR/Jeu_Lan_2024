
if global.hostName != noone {
	global.shouldHostStop = true;	
}else{
	global.shouldPlayerQuit = true;	
}

room_goto(rm_lobby);