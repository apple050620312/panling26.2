#要做的事
setblock 102 43 155 minecraft:command_block{Command:"function pld:npcs/middle/chat17"} replace
setblock 101 43 155 minecraft:command_block{Command:"function pld:npcs/middle/chat18"} replace
setblock 103 43 155 minecraft:command_block{Command:"function pld:npcs/middle/chat19"} replace
setblock 102 44 169 minecraft:command_block{Command:"function pld:npcs/middle/chat20"} replace
setblock 102 43 170 minecraft:command_block{Command:"function pld:npcs/middle/chat21"} replace
setblock 102 43 169 minecraft:command_block{Command:"function pld:npcs/middle/chat22"} replace

kill @e[type=villager,tag=!panling]
execute positioned 102 43 155 run function pld:npcs/middle/chat17
execute positioned 101 43 155 run function pld:npcs/middle/chat18
execute positioned 103 43 155 run function pld:npcs/middle/chat19
execute positioned 102 44 169 run function pld:npcs/middle/chat20
execute positioned 102 43 170 run function pld:npcs/middle/chat21
execute positioned 102 43 169 run function pld:npcs/middle/chat22
#区块卸载
forceload remove 100 157 101 165
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/6_11/pre 1t