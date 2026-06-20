#语境
# @s 射击的玩家
# @e[tag=bow4_tag] 被击中的目标

#被减速
effect give @e[tag=bow4_tag] slowness 5 1

tag @s add shooter
function pld:system/archer_damage/weapon_skill/bow4/skill
tag @s remove shooter
