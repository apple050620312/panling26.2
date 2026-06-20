
#要做的事
data merge block 3199 20 -346 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3200 20 -346 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan2.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3204 17 -346 minecraft:command_block{Command:"execute as @p[x=3200,y=19,z=-346,distance=..10] run function pld:system/race_tp/race3_out"} destroy
setblock 3191 15 -340 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 
setblock 3210 15 -340 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 

setblock 3200 17 -340 air
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3191 15 -340 run function pld:npcs/zhan/guard2
execute positioned 3210 15 -340 run function pld:npcs/zhan/guard2
#区块卸载
forceload remove 3194 -338 3204 -338
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/200_-21/pre 1t