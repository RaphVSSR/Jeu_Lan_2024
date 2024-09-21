
if global.hostName != noone && global.hostActive {
	global.shouldHostStop = true;
	
}else if global.hostName != noone && !global.hostActive{
	global.shouldPlayerQuit = true;	
}

room_goto(rm_lobby);