#区块强加载
forceload add 231 -176 247 -198
#要做的事

setblock 225 22 -198 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 16, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:mirror", sizeY: 14, sizeZ: 12, showboundingbox: 1b}
setblock 224 22 -198 redstone_block
setblock 236 41 -182 minecraft:oak_pressure_plate
#区块卸载
forceload remove 231 -176 247 -198
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_2 1t