
#要做的事
data merge block 280 46 -23 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ze2.text2"}','{"translate":"pl.sign.ze2.text3"}','{"translate":"pl.sign.ze2.text4"}']}}
data merge block 293 45 -26 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ze3.text2"}','{"translate":"pl.sign.ze3.text3"}','{"translate":""}']}}

setblock 293 39 -29 minecraft:command_block{Command:"function pld:npcs/middle/ze3"} replace 
setblock 283 40 -7 minecraft:command_block{Command:"execute as @p[x=280,y=44,z=-10,dx=7,dy=7,dz=4,scores={ex_zhan_battle=1,race=3} run function pld:system/ex_zhan/in_battle"}] replace 
setblock 295 42 -25 minecraft:command_block{Command:"execute as @p[x=293,y=44,z=-26,distance=..5] run function pld:system/ex_zhan/reward"} replace 
setblock 277 40 -24 minecraft:command_block{Command:"execute as @p[x=279,y=44,z=-23,dx=9,dy=7,dz=12] run function pld:system/ex_zhan/out_battle"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 293 39 -29 run function pld:npcs/middle/ze3
#区块卸载
forceload remove 291 -26 284 -8
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/18_3/pre 1t