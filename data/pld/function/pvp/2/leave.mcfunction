clear @s[team=attack,scores={inpvp_area=1}]
clear @s[team=defence,scores={inpvp_area=1}]
effect clear @s[team=attack,scores={inpvp_area=1}]
effect clear @s[team=defence,scores={inpvp_area=1}]

kill @e[x=1824,y=100,z=-1888,dx=100,dy=150,dz=160,type=minecraft:item]

effect give @s[team=attack] minecraft:instant_health 1 10
effect give @s[team=defence] minecraft:instant_health 1 10

spawnpoint @s[team=attack] 1870 44 -1788
spawnpoint @s[team=defence] 1870 44 -1821

tp @s[team=defence] 1870 44 -1821 180 0
tp @s[team=attack] 1870 44 -1788 0 0

#重置玩家记分板
function pld:pvp/pvp_scb_reset

