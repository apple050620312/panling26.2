#要做的事
setblock 509 47 33 minecraft:command_block[custom_data={Command:"function pld:npcs/east/east04"}] replace 
setblock 511 36 36 minecraft:command_block[custom_data={Command:"execute as @p[x=511.5,y=38,z=36.5,distance=..1] run function pld:npcs/east/do_eastelder"}] replace 
setblock 510 36 36 minecraft:command_block[custom_data={Command:"kill @e[x=511.5,y=38,z=36.5,distance=..1,type=rabbit]"}] replace 

data merge block 525 33 44 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east6.text2"}','{"text":""}','{"text":""}']}}

kill @e[type=villager,tag=!panling]
execute positioned 509 47 33 run function pld:npcs/east/east04
#区块卸载
forceload remove 508 35 525 44
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/31_4/pre 1t