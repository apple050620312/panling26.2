#区块强加载
forceload add 418 -628
#要做的事
setblock 418 30 -629 minecraft:command_block[block_entity_data={Command:"execute as @p[x=417,y=32,z=-628,distance=..3] run function pld:system/outpenglai"}] replace 
kill @e[type=villager,tag=!panling]

#区块卸载
forceload remove 418 -628
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/penglai_end 1t