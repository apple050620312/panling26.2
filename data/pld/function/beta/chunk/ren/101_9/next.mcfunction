
#要做的事
setblock 1619 151 147 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/chat5"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 1619 151 147 run function pld:npcs/ren/chat5
#区块卸载
forceload remove 1621 147
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/102_7/pre 1t