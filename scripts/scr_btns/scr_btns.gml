// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function activateHostBtnVerify(txtToVerify){
	if txtToVerify != "Nom de la future session" && string_length(txtToVerify) >= 1 {
		return true
	}
}

//function activateJoinBtnVerify(varToVerify){
//	if txtToVerify != "Nom de la future session" && string_length(txtToVerify) >= 1 {
//		return true
//	}
//}