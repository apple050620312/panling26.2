#区块强加载
forceload add 837 -58
#要做的事
setblock 843 28 -56 minecraft:command_block[block_entity_data={Command:"function pld:system/ex_ren/summon_rabbit"}] replace 



#区块卸载
forceload remove 837 -58
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/52_-5 1t