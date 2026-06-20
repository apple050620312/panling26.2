
#要做的事
data merge block 9 49 827 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.south5.text2"}','{"translate":"pl.sign.south5.text3"}','{"translate":""}']}}

setblock 8 43 833 minecraft:command_block{Command:"function pld:npcs/south/tong5"} replace 
setblock 8 43 827 minecraft:command_block{Command:"function pld:npcs/south/tong6"} replace 
setblock 8 29 822 minecraft:command_block{Command:"function pld:npcs/south/ye2"} replace 
setblock 11 47 827 minecraft:repeating_command_block{Command:"function pld:system/ex_yao/check"} replace 
data merge block 9 47 827 {Items:[]}
data merge block 3 35 823 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ye.text2"}','{"translate":"pl.sign.ye.text3"}','{"translate":""}']}}

setblock 1 35 823 minecraft:command_block{Command:"execute as @p[x=3,y=35,z=822,distance=..10] run function pld:system/ex_yao/reward"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 8 43 833 run function pld:npcs/south/tong5
execute positioned 8 43 827 run function pld:npcs/south/tong6
execute positioned 8 29 822 run function pld:npcs/south/ye2
#区块卸载
forceload remove 4 828 4 835
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/7_49/pre 1t