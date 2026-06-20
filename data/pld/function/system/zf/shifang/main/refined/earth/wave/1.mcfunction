#震荡效果1
#对半径3以内的敌方单位造成100%强度的伤害并眩晕

#粒子效果
function pld:system/zf/shifang/main/refined/earth/particle/wave1/main

#tag
tag @e[tag=monster,distance=..3] add zf_earth_attack

#damage
function pld:system/zf/shifang/main/refined/earth/wave/damage
