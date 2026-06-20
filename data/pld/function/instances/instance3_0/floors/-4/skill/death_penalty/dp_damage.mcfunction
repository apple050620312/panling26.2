#对最近的目标造成大量伤害 并上标记，下次受到本伤害直接秒杀
execute unless score @s in3_skill_dp_mark matches 1 run effect give @p[limit=5,distance=..1.5] instant_damage 1 5
execute unless score @s in3_skill_dp_mark matches 1 run effect give @p[limit=5,distance=..1.5] slowness 15 3
execute if score @s in3_skill_dp_mark matches 1 run kill @s

execute if score #system in3_-4f_phase matches 2 if score #system in3_skill_dp_mark matches 0 unless entity @s[tag=drawn_white] run kill @s
execute if score #system in3_-4f_phase matches 2 if score #system in3_skill_dp_mark matches 1 unless entity @s[tag=drawn_black] run kill @s


#特效
function pld:instances/instance3_0/floors/-4/skill/death_penalty/particle/hurt
