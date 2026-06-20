
#要做的事
setblock -197 61 -172 minecraft:command_block[custom_data={Command:"function pld:npcs/west/yaomain6"}] replace
setblock -201 141 -177 minecraft:command_block[custom_data={Command:"function pld:npcs/west/yaomain7"}] replace
setblock -222 62 -180 minecraft:command_block[custom_data={Command:"execute as @p[x=-221,y=64,z=-180,distance=..2] run function pld:system/intoyaomain7"}] replace
setblock -202 64 -180 minecraft:command_block[custom_data={Command:"function pld:instances/instance3/in"}] destroy

data merge block -203 66 -180 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.instance.a5.text2"}','{"translate":"pl.sign.instance3.text3"}','{"translate":"pl.sign.instance3.text4"}']}}
data merge block -202 66 -181 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.instance.a5.text2"}','{"translate":"pl.sign.instance3.text3"}','{"translate":"pl.sign.instance3.text4"}']}}
data merge block -201 66 -180 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.instance.a5.text2"}','{"translate":"pl.sign.instance3.text3"}','{"translate":"pl.sign.instance3.text4"}']}}
data merge block -202 66 -179 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.instance.a5.text2"}','{"translate":"pl.sign.instance3.text3"}','{"translate":"pl.sign.instance3.text4"}']}}


setblock -178 59 -189 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:trader_instance3", showboundingbox: 1b}
setblock -178 60 -189 redstone_block
execute positioned -178 64 -189 run function pld:npcs/west/trader_instance3

setblock -208 49 -192 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:instance3_select1", showboundingbox: 1b}
setblock -208 50 -192 redstone_block

setblock -206 53 -185 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":""}','{"translate":"pl.sign.instance3.leave0.text2"}','{"translate":""}','{"translate":""}']}} replace

setblock -208 49 -176 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:instance3_select2", showboundingbox: 1b}
setblock -208 50 -176 redstone_block

setblock -200 53 -177 air

kill @e[type=villager,tag=!panling]
execute positioned -197 61 -172 run function pld:npcs/west/yaomain6
execute positioned -201 141 -177 run function pld:npcs/west/yaomain7
#区块卸载
forceload remove -199 -169 -218 -183
forceload remove -190 -173 -188 -179
forceload remove -198 -194
forceload remove -188 -174

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-18_5/pre 1t