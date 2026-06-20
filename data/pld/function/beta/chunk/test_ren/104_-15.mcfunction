#区块强加载
forceload add 1679 -232 1662 -223
#要做的事
setblock 1679 23 -232 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1679,y=25,z=-232,distance=..3] run function pld:test/ren/finish"}] replace 

#区块卸载
forceload remove 1679 -232 1662 -223
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/105_-16 1t