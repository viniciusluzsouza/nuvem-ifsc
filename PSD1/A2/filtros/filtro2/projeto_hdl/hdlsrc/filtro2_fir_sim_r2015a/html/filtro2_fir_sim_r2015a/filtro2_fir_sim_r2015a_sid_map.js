function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["filtro2_fir_sim_r2015a:46"] = "filtro2_fir_sim_r2015a:45";
    this.sidParentMap["filtro2_fir_sim_r2015a:47"] = "filtro2_fir_sim_r2015a:45";
    this.sidParentMap["filtro2_fir_sim_r2015a:48"] = "filtro2_fir_sim_r2015a:45";
    this.sidParentMap["filtro2_fir_sim_r2015a:49"] = "filtro2_fir_sim_r2015a:45";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
