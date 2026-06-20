
#要做的事
data merge block -98 58 46 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north15.text2"}','{"translate":"pl.sign.north15.text3"}','{"translate":""}']}}
data merge block -106 60 63 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west12.text2"}','{"translate":"pl.sign.west12.text3"}','{"translate":""}']}}
data merge block -106 59 63 {front_text:{messages:['{"translate":"pl.sign.west13.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}

setblock -106 62 46 minecraft:command_block[custom_data={Command:"function pld:npcs/west/te4"}] replace 
setblock -100 52 44 minecraft:command_block[custom_data={Command:"function pld:npcs/west/te5"}] replace 
setblock -106 56 64 minecraft:command_block[custom_data={Command:"function pld:system/te4/te4tick"}] replace 
setblock -96 58 45 minecraft:command_block[custom_data={Command:"execute as @p[x=-98,y=58,z=45,distance=..5] run function pld:system/te4/reward"}] replace 

setblock -100 55 58 minecraft:command_block[custom_data={Command:"function pld:system/te4/out"}] replace 



kill @e[type=villager,tag=!panling]
execute positioned -106 62 46 run function pld:npcs/west/te4
execute positioned -100 52 44 run function pld:npcs/west/te5
#区块卸载
forceload remove -93 42 -105 71
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-8_8/pre 1t