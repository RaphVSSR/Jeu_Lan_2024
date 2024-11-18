
if global.hostActive {
	
	hostStop();	
	
}else if !global.hostActive && global.playerName != undefined {
	
	playerQuit();	
	
}