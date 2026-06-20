
#要做的事
setblock 3337 105 942 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xianmain2"}] replace 

setblock 3330 104 965 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3335 104 965 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3330 104 918 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3335 104 918 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3337 105 942 run function pld:npcs/xian/xianmain2
execute positioned 3330 104 965 run function pld:npcs/xian/guard
execute positioned 3335 104 965 run function pld:npcs/xian/guard
execute positioned 3330 104 918 run function pld:npcs/xian/guard
execute positioned 3335 104 918 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3331 917 3332 966
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/208_64/pre 1t