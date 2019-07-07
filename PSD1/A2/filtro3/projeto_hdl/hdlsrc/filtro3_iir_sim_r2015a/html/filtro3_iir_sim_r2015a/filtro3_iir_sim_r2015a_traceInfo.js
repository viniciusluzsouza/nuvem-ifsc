function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Input Quantizer */
	this.urlHashMap["filtro3_iir_sim_r2015a:207"] = "Filtro_IIR_BP_20bits_signed.vhd:87";
	/* <S1>/filter */
	this.urlHashMap["filtro3_iir_sim_r2015a:208"] = "Filtro_IIR_BP_20bits_signed.vhd:76";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "filtro3_iir_sim_r2015a"};
	this.sidHashMap["filtro3_iir_sim_r2015a"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/In"] = {sid: "filtro3_iir_sim_r2015a:206"};
	this.sidHashMap["filtro3_iir_sim_r2015a:206"] = {rtwname: "<S1>/In"};
	this.rtwnameHashMap["<S1>/Input Quantizer"] = {sid: "filtro3_iir_sim_r2015a:207"};
	this.sidHashMap["filtro3_iir_sim_r2015a:207"] = {rtwname: "<S1>/Input Quantizer"};
	this.rtwnameHashMap["<S1>/filter"] = {sid: "filtro3_iir_sim_r2015a:208"};
	this.sidHashMap["filtro3_iir_sim_r2015a:208"] = {rtwname: "<S1>/filter"};
	this.rtwnameHashMap["<S1>/Out"] = {sid: "filtro3_iir_sim_r2015a:209"};
	this.sidHashMap["filtro3_iir_sim_r2015a:209"] = {rtwname: "<S1>/Out"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
