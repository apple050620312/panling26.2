clear @s[team=attack,scores={inpvp_area=1}]
clear @s[team=defence,scores={inpvp_area=1}]
effect clear @s[team=attack,scores={inpvp_area=1}]
effect clear @s[team=defence,scores={inpvp_area=1}]

effect give @s[team=attack] minecraft:instant_health 1 10
effect give @s[team=defence] minecraft:instant_health 1 10

tp @s[team=attack] 1349 51 -1776 90 0
tp @s[team=defence] 1358 56 -1826 90 0

#重置玩家记分板
function pld:pvp/pvp_scb_reset

team join normal @s[team=attack]
team join normal @s[team=defence]


