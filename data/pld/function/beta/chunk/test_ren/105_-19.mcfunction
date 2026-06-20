#区块强加载
forceload add 1690 -299 1670 -314
forceload add 1667 -266
forceload add 1663 -302

#要做的事
setblock 1689 18 -296 minecraft:glass_pane
setblock 1691 20 -298 minecraft:glass_pane
setblock 1670 18 -315 minecraft:glass_pane
setblock 1686 25 -306 minecraft:glass_pane
setblock 1663 24 -303 minecraft:glass_pane
setblock 1663 27 -298 minecraft:glass_pane

setblock 1669 29 -272 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1669,y=31,z=-272,distance=..3] run function pld:test/ren/metal/out"}] replace 

#区块卸载
forceload remove 1690 -299 1670 -314
forceload remove 1667 -266
forceload remove 1663 -302
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/106_-13 1t