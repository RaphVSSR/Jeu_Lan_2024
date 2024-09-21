// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function activateHostBtnVerify(txtToVerify){
	if (txtToVerify != "Nom de la future session" && string_length(txtToVerify) >= 1) && global.hostSelected == undefined {
		return true
	}
}

function activateJoinBtnVerify(varToVerify){
	if varToVerify != undefined {
		return true
	}
}