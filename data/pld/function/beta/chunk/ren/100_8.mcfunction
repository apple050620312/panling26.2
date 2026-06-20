#区块强加载
forceload add 1606 132
#要做的事
setblock 1600 136 137 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/guard"}] replace
execute positioned 1600 136 137 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1606 132
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/102_6 1t