function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["filtro3_iir_sim_r2015a:233"] = "filtro3_iir_sim_r2015a:232";
    this.sidParentMap["filtro3_iir_sim_r2015a:235"] = "filtro3_iir_sim_r2015a:232";
    this.sidParentMap["filtro3_iir_sim_r2015a:236"] = "filtro3_iir_sim_r2015a:232";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
