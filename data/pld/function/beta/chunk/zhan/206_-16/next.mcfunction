
#要做的事
setblock 3325 15 -143 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat5"}] replace 
setblock 3320 15 -149 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat6"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 3325 15 -143 run function pld:npcs/zhan/chat5
execute positioned 3320 15 -149 run function pld:npcs/zhan/chat6
#区块卸载
forceload remove 3320 -142 3319 -146
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/207_-9/pre 1t