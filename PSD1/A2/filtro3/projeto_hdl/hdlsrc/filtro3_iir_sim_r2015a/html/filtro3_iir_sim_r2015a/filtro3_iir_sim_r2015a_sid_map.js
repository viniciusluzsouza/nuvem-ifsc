function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["filtro3_iir_sim_r2015a:206"] = "filtro3_iir_sim_r2015a:205";
    this.sidParentMap["filtro3_iir_sim_r2015a:207"] = "filtro3_iir_sim_r2015a:205";
    this.sidParentMap["filtro3_iir_sim_r2015a:208"] = "filtro3_iir_sim_r2015a:205";
    this.sidParentMap["filtro3_iir_sim_r2015a:209"] = "filtro3_iir_sim_r2015a:205";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
