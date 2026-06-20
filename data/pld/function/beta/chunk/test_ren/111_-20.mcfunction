#区块强加载
forceload add 1784 -314
#要做的事

setblock 1785 63 -311 air
setblock 1785 62 -313 minecraft:command_block[custom_data={Command:"execute as @p[x=1785,y=65,z=-313,distance=..3] run function pld:test/ren/wood/out"}] replace 

#区块卸载
forceload remove 1784 -314
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/test_ren_end 1t