#区块强加载
forceload add -296 795
#要做的事

setblock -296 6 795 structure_block[block_entity_data={metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:trader_instance2", showboundingbox: 1b}]
setblock -297 6 795 redstone_block
execute positioned -296 11 795 run function pld:npcs/south/trader_instance2


#区块卸载
forceload remove -296 795
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-20_31 1t