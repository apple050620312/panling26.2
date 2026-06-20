
#要做的事
setblock 1697 99 852 minecraft:command_block[custom_data={Command:"function pld:npcs/east/dragonsoul"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1697 99 852 run function pld:npcs/east/dragonsoul
#区块卸载
forceload remove 1697 854
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/25_0 1t