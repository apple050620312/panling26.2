
#要做的事
setblock 354 28 -734 minecraft:command_block[custom_data={Command:"function pld:npcs/penglai/chat5"}] replace 
setblock 357 33 -708 minecraft:command_block[custom_data={Command:"function pld:npcs/penglai/se1"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 354 28 -734 run function pld:npcs/penglai/chat5
execute positioned 357 33 -708 run function pld:npcs/penglai/se1
#区块卸载
forceload remove 358 -717 356 -726
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/23_-42/pre 1t