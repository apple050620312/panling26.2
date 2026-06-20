scoreboard players set #system pvpevent 0
scoreboard players operation #system pvp2_delay = #system pvp_delay_all


tp @a[team=defence] 1870 44 -1821 180 0
tp @a[team=attack] 1870 44 -1788 0 0

#进入战场的人才会清理东西
clear @a[team=attack,scores={inpvp_area=1}]
clear @a[team=defence,scores={inpvp_area=1}]
effect clear @a[team=attack,scores={inpvp_area=1}]
effect clear @a[team=defence,scores={inpvp_area=1}]

kill @e[x=1824,y=100,z=-1888,dx=100,dy=150,dz=160,type=minecraft:item]

effect give @a[team=attack] minecraft:instant_health 1 10
effect give @a[team=defence] minecraft:instant_health 1 10

spawnpoint @a[team=attack] 1870 44 -1788
spawnpoint @a[team=defence] 1870 44 -1821

scoreboard players set @a[team=attack] feather_mainland 1
scoreboard players set @a[team=defence] feather_mainland 1
scoreboard players set @a[team=defence] inpvp 0
scoreboard players set @a[team=attack] inpvp 0
scoreboard players set @a[team=attack] teamkill.green 0
scoreboard players set @a[team=attack] teamkill.green 0
scoreboard players set @a[team=defence] teamkill.red 0
scoreboard players set @a[team=defence] teamkill.red 0
scoreboard players set @a[team=defence] inpvp_area 0
scoreboard players set @a[team=defence] inbuy_area 0
scoreboard players set @a[team=defence] pvp_relife_tick -1
scoreboard players set @a[team=attack] inpvp_area 0
scoreboard players set @a[team=attack] inbuy_area 0
scoreboard players set @a[team=attack] pvp_relife_tick -1


#开放通道
setblock 1870 44 -1824 air
setblock 1870 44 -1817 minecraft:oak_planks

setblock 1870 44 -1785 air
setblock 1870 44 -1792 minecraft:stone_bricks
execute as @a[team=attack] run attribute @s attack_damage modifier add panling:mod_101_0_0_0_0 -0.99999 add_multiplied_total
execute as @a[team=defence] run attribute @s attack_damage modifier add panling:mod_101_0_0_0_0 -0.99999 add_multiplied_total


team join normal @a[team=attack]
team join normal @a[team=defence]
#计算时间
scoreboard players operation #system pvp2_event_min = #system pvp2_middle
#scoreboard players operation #system pvp2_event_min /= #system 1200
#异步
scoreboard players operation #system pvp2_event_min /= #system 300