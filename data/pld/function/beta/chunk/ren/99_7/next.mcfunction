#要做的事
setblock 1592 141 123 air
setblock 1598 130 128 minecraft:command_block[custom_data={Command:"execute as @p[x=1598,y=132,z=123,distance=..10] run function pld:system/race_tp/race4_out"}] replace
setblock 1599 136 112 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/supply4"}] replace

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1599 136 112 run function pld:npcs/ren/supply4
#区块卸载
forceload remove 1592 123 1594 132
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/100_6/pre 1t