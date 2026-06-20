#震荡效果2
#对半径4..5以内的敌方单位造成100%强度的伤害并眩晕

#粒子效果
function pld:system/zf/shifang/main/refined/earth/particle/wave3/main

#tag
tag @e[tag=monster,distance=4..5] add zf_earth_attack

#damage
function pld:system/zf/shifang/main/refined/earth/wave/damage

#清理自己
kill @s