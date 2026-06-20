#区块强加载
forceload add 602 -136 616 -144
#要做的事
setblock 606 9 -137 minecraft:command_block[custom_data={Command:"execute as @p[x=606,y=11,z=-137,distance=..5] run function pld:instances/instance1/in"}] replace 
setblock 616 4 -144 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:trader_instance1", showboundingbox: 1b}
setblock 616 5 -144 redstone_block
execute positioned 616 9 -144 run function pld:npcs/east/trader_instance1
#区块卸载
forceload remove 602 -136 616 -144
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/37_10 1t
