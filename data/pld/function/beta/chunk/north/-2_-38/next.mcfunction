#要做的事

data merge block -24 20 -615 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north15.text2"}','{"translate":"pl.sign.north15.text3"}','{"translate":""}']}}
setblock -28 14 -616 minecraft:command_block[custom_data={Command:"function pld:npcs/north/te3"}] replace 
setblock -22 20 -616 minecraft:command_block[custom_data={Command:"execute as @p[x=-24,y=20,z=-616,distance=..7] run function pld:system/te2/reward"}] replace 
setblock -26 19 -607 minecraft:command_block[custom_data={Command:"function pld:system/te2/out"}] replace 
setblock -16 41 -600 minecraft:command_block[custom_data={Command:"function pld:system/te2/te2tick"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -28 14 -616 run function pld:npcs/north/te3
#区块卸载
forceload remove -11 -602 -17 -611
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-19_-42/pre 1t