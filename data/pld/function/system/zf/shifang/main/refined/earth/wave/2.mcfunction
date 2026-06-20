#震荡效果2
#对半径3..4以内的敌方单位造成100%强度的伤害并眩晕

#粒子效果
function pld:system/zf/shifang/main/refined/earth/particle/wave2/main

#tag
tag @e[tag=monster,distance=3..4] add zf_earth_attack

#damage
function pld:system/zf/shifang/main/refined/earth/wave/damage