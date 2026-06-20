scoreboard players set #system pvpevent 0
scoreboard players operation #system pvp1_delay = #system pvp_delay_all

tp @a[team=attack] 1349 51 -1776 90 0
tp @a[team=defence] 1358 56 -1826 90 0

#离开前 出生点依旧在房间内
spawnpoint @a[team=attack] 1349 51 -1776
spawnpoint @a[team=defence] 1358 56 -1826

#开放通道
setblock 1346 51 -1776 air
setblock 1353 51 -1776 minecraft:cobblestone

setblock 1355 56 -1826 air
setblock 1362 56 -1826 minecraft:cobblestone

#进入战场的人才会清理东西
clear @a[team=attack,scores={inpvp_area=1}]
clear @a[team=defence,scores={inpvp_area=1}]
effect clear @a[team=attack,scores={inpvp_area=1}]
effect clear @a[team=defence,scores={inpvp_area=1}]

effect give @a[team=attack] minecraft:instant_health 1 10
effect give @a[team=defence] minecraft:instant_health 1 10

scoreboard players set #system pvp1_deliveract -1
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

execute as @a[team=attack] run attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战傷害屏蔽" -0.99999 multiply
execute as @a[team=defence] run attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战傷害屏蔽" -0.99999 multiply

team join normal @a[team=attack]
team join normal @a[team=defence]
#计算时间
scoreboard players operation #system pvp1_event_min = #system pvp1_middle
#scoreboard players operation #system pvp1_event_min /= #system 1200
#异步
scoreboard players operation #system pvp1_event_min /= #system 300

#取消水炮弹延迟指令
schedule clear pld:pvp/1/ing/water_cannon/1_2
schedule clear pld:pvp/1/ing/water_cannon/1_3
schedule clear pld:pvp/1/ing/water_cannon/2_2
schedule clear pld:pvp/1/ing/water_cannon/2_3