#区块强加载
forceload add -694 -637 -691 -644
#要做的事
data merge block -697 109 -637 {front_text:{messages:['{"translate":"pl.sign.instance4.4.text1"}','{"translate":"pl.sign.instance4.4.text2"}','{"translate":"pl.sign.instance4.4.text3"}','{"translate":"pl.sign.instance4.4.text4"}']}}
data merge block -697 109 -638 {front_text:{messages:['{"translate":"pl.sign.instance4.5.text1"}','{"translate":"pl.sign.instance4.5.text2"}','{"translate":"pl.sign.instance4.5.text3"}','{"translate":"pl.sign.instance4.5.text4"}']}}

setblock -696 105 -637 minecraft:command_block[block_entity_data={Command:"execute as @p[x=-697,y=108,z=-637,distance=..5] run function pld:instances/instance4/in"}] replace

setblock -691 103 -644 structure_block[block_entity_data={metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:trader_instance4", showboundingbox: 1b}]
setblock -691 104 -644 redstone_block
execute positioned -691 108 -644 run function pld:npcs/west/trader_instance4

fill -692 104 -644 -692 103 -643 minecraft:cobblestone
fill -689 104 -643 -689 103 -645 minecraft:cobblestone
fill -691 104 -643 -690 103 -643 minecraft:cobblestone
setblock -690 102 -644 minecraft:cobblestone

#区块卸载
forceload remove -694 -637 -691 -644
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-45_-4 1t