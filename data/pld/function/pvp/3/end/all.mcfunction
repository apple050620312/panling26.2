scoreboard players set #system pvpevent 0
scoreboard players operation #system pvp3_delay = #system pvp_delay_all

tp @a[team=defence] 2387 184 -1801 -90 0
tp @a[team=attack] 2339 184 -1801 90 0

#进入战场的人才会清理东西
clear @a[team=attack,scores={inpvp_area=1}]
clear @a[team=defence,scores={inpvp_area=1}]
effect clear @a[team=attack,scores={inpvp_area=1}]
effect clear @a[team=defence,scores={inpvp_area=1}]

effect give @a[team=attack] minecraft:instant_health 1 10
effect give @a[team=defence] minecraft:instant_health 1 10

spawnpoint @a[team=attack] 2339 184 -1801
spawnpoint @a[team=defence] 2387 184 -1801

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
setblock 2336 184 -1801 air
setblock 2339 183 -1801 minecraft:glowstone

setblock 2390 184 -1801 air
setblock 2387 183 -1801 minecraft:glowstone
execute as @a[team=attack] run attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战傷害屏蔽" -0.99999 multiply
execute as @a[team=defence] run attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战傷害屏蔽" -0.99999 multiply


team join normal @a[team=attack]
team join normal @a[team=defence]
#计算时间
scoreboard players operation #system pvp3_event_min = #system pvp3_middle
#scoreboard players operation #system pvp3_event_min /= #system 1200
#异步
scoreboard players operation #system pvp3_event_min /= #system 300