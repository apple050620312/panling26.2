#要做的事
setblock 1779 157 131 minecraft:command_block[custom_data={Command:"particle minecraft:enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 
setblock 1781 155 134 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/rentong7"}] replace 
setblock 1760 154 141 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/chat4"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 1781 155 134 run function pld:npcs/ren/rentong7
execute positioned 1760 154 141 run function pld:npcs/ren/chat4
#区块卸载
forceload remove 1755 135 1779 133
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/111_11/pre 1t