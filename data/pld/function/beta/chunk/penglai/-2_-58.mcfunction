#区块强加载
forceload add -21 -923
#要做的事

setblock -21 43 -923 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:trader_instance5", showboundingbox: 1b}
setblock -21 44 -923 redstone_block
execute positioned -21 48 -923 run function pld:npcs/penglai/trader_instance5
execute positioned -21 48 -921 run function pld:npcs/penglai/trader_legend_forge


#区块卸载
forceload remove -21 -923
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/-12_-52 1t