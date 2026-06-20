#区块强加载
forceload add 2825 -410 2812 -420
#要做的事
setblock 2813 100 -421 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 
setblock 2822 100 -421 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 
setblock 2831 100 -421 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 
setblock 2831 100 -409 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 
setblock 2822 100 -409 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 
setblock 2813 100 -409 minecraft:command_block{Command:"/tp @e[dx=2,dy=3,dz=2] ~ ~1 ~-4"} replace 

#区块卸载
forceload remove 2825 -410 2812 -420
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/177_-29 1t