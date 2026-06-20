#要做的事
data merge block 579 34 43 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east4.text2"}','{"text":""}','{"text":""}']}}
setblock 598 39 37 minecraft:command_block{Command:"function pld:npcs/east/renmain6"} replace 
setblock 591 27 47 minecraft:command_block{Command:"function pld:npcs/east/zhanmain6"} replace 
data merge block 575 34 36 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east4.text2"}','{"text":""}','{"text":""}']}}


setblock 581 27 47 minecraft:command_block{Command:'tellraw @p[x=581,y=33,z=51,distance=..5,scores={race=3,dragon=0} {"translate":"pl.info.zm6"}'}] replace 


kill @e[type=villager,tag=!panling]
execute positioned 598 39 37 run function pld:npcs/east/renmain6
execute positioned 591 27 47 run function pld:npcs/east/zhanmain6
#区块卸载
forceload remove 597 40 570 39
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/36_3/pre 1t