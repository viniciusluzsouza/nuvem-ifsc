function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S3>/filter */
	this.urlHashMap["filtro3_iir_sim_r2015a:235"] = "Filtro_IIR_BP_20bits_unsigned.vhd:73";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "filtro3_iir_sim_r2015a"};
	this.sidHashMap["filtro3_iir_sim_r2015a"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S3>/In"] = {sid: "filtro3_iir_sim_r2015a:233"};
	this.sidHashMap["filtro3_iir_sim_r2015a:233"] = {rtwname: "<S3>/In"};
	this.rtwnameHashMap["<S3>/filter"] = {sid: "filtro3_iir_sim_r2015a:235"};
	this.sidHashMap["filtro3_iir_sim_r2015a:235"] = {rtwname: "<S3>/filter"};
	this.rtwnameHashMap["<S3>/Out"] = {sid: "filtro3_iir_sim_r2015a:236"};
	this.sidHashMap["filtro3_iir_sim_r2015a:236"] = {rtwname: "<S3>/Out"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
