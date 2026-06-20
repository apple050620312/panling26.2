
#要做的事
setblock 2655 86 896 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/yaomain4"}] replace 
setblock 2655 85 896 minecraft:command_block[block_entity_data={Command:"function pld:npcs/yao/yaotong4"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2655 86 896 run function pld:npcs/yao/yaomain4
execute positioned 2655 85 896 run function pld:npcs/yao/yaotong4
#区块卸载
forceload remove 2654 897 2659 892
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/165_57/pre 1t