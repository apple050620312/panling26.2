#要做的事
setblock 253 46 22 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/te25"}] replace
setblock 258 46 22 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/tong4"}] replace
setblock 254 46 27 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/yh2"}] replace
setblock 246 48 25 minecraft:command_block[custom_data={Command:'tellraw @p[x=251,y=49,z=24,distance=..2,scores={job=..1}] {"translate":"pl.info.dfresisted"}'}] replace 

setblock 246 48 24 minecraft:command_block[custom_data={Command:"tp @p[x=251,y=49,z=24,distance=..2,scores={job=2}] 283 31 42"}] replace 



kill @e[type=villager,tag=!panling]
execute positioned 253 46 22 run function pld:npcs/middle/te25
execute positioned 258 46 22 run function pld:npcs/middle/tong4
execute positioned 254 46 27 run function pld:npcs/middle/yh2
#区块卸载
forceload remove 258 24 253 24
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_-12/pre 1t