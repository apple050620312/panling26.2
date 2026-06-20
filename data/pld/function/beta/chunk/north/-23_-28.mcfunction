#区块强加载
forceload add -360 -444
#要做的事
setblock -368 95 -448 structure_block[block_entity_data={metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 16, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:te17_2", id: "minecraft:structure_block", sizeY: 14, sizeZ: 12, showboundingbox: 1b}]
setblock -368 96 -448 redstone_block
execute positioned -361 96 -441 run function pld:npcs/north/te17
#区块卸载
forceload remove -360 -444
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/0_-39 1t