function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S2>/Input Quantizer */
	this.urlHashMap["filtro2_fir_sim_r2015a:47"] = "Filtro_FIR_HP_8bits.vhd:85";
	/* <S2>/filter */
	this.urlHashMap["filtro2_fir_sim_r2015a:48"] = "Filtro_FIR_HP_8bits.vhd:74";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "filtro2_fir_sim_r2015a"};
	this.sidHashMap["filtro2_fir_sim_r2015a"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S2>/In"] = {sid: "filtro2_fir_sim_r2015a:46"};
	this.sidHashMap["filtro2_fir_sim_r2015a:46"] = {rtwname: "<S2>/In"};
	this.rtwnameHashMap["<S2>/Input Quantizer"] = {sid: "filtro2_fir_sim_r2015a:47"};
	this.sidHashMap["filtro2_fir_sim_r2015a:47"] = {rtwname: "<S2>/Input Quantizer"};
	this.rtwnameHashMap["<S2>/filter"] = {sid: "filtro2_fir_sim_r2015a:48"};
	this.sidHashMap["filtro2_fir_sim_r2015a:48"] = {rtwname: "<S2>/filter"};
	this.rtwnameHashMap["<S2>/Out"] = {sid: "filtro2_fir_sim_r2015a:49"};
	this.sidHashMap["filtro2_fir_sim_r2015a:49"] = {rtwname: "<S2>/Out"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
