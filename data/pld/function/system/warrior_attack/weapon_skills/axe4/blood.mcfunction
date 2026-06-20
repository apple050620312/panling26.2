#给目标怪物上流血
# @s player_2atk
# @e tag=warrior_tag

#blooding:[{damage:10d,lvl:1s,next_tick:5s,remaining_times:2s,uid:1}]
#damage:即将造成的流血伤害 lvl：层数 nexttick：下次流血剩余的tick（5tick） remaining_times:流血剩余时间（5ticks）

#如果没有uid 为对象分配一个uid 和 marker
execute as @e[tag=warrior_tag,limit=1] unless score @s blood_uid matches 1.. at @s run function pld:system/warrior_attack/weapon_skills/axe4/new_blood_marker

#根据目标的blood_uid 找到对应的marker
execute as @e[type=marker] if score @s blood_uid = @e[tag=warrior_tag,limit=1] blood_uid run tag @s add skill_blood

#检查marker的data.blooding 中，是否有本玩家的流血 输出：记分板
function pld:system/warrior_attack/weapon_skills/axe4/get_blood_owner

#此时，pld:system blooding_temp中，该玩家对应流血项为[0]（返回值1），或是不存在对应项目（返回值2）

#有本玩家流血，流血持续时间更新,等级达到3之前+1
execute if score #temp blooded matches 1 run function pld:system/warrior_attack/weapon_skills/axe4/pursuit

#没有本玩家流血，上新的流血
execute if score #temp blooded matches 2 run function pld:system/warrior_attack/weapon_skills/axe4/new_blood

#重置tag
tag @e[type=marker,tag=skill_blood] remove skill_blood

#重置记分板
scoreboard players set #temp blooded 0

#可上流血状态结束
scoreboard players set @s weapon_skill_axe4_5ticks -1
