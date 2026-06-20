#获取marker上 对应的流血状态效果
# @e[type=marker,tag=skill_blood] 
# @e tag=warrior_tag

#清空中介用tamp
data modify storage pld:system blooding_temp set value []
data modify storage pld:system blooding_temp2 set value []

#复制目标的blood相关信息
data modify storage pld:system blooding_temp set from entity @e[type=marker,tag=skill_blood,limit=1] data.blooding

#循环检索，将本玩家造成的放到第一个
function pld:system/warrior_attack/weapon_skills/axe4/loop

#重置循环内记分板
scoreboard players set #temp player_uid -1

#此时，pld:system blooding_temp中，该玩家对应流血项为[0]（返回值1），或是不存在对应项目（返回值2）
