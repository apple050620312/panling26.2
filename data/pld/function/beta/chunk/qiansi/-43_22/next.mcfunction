
#要做的事

data merge block -676 140 352 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.se1.text2"}','{"translate":""}','{"translate":""}']}}

data merge block -698 143 355 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.se2.text2"}','{"translate":"pl.sign.se2.text3"}','{"translate":""}']}}

setblock -699 137 351 minecraft:command_block{Command:"function pld:npcs/qiansi/se4"} replace 
setblock -678 135 355 minecraft:command_block{Command:"function pld:npcs/qiansi/zh3"} replace 
setblock -679 135 346 minecraft:command_block{Command:"function pld:npcs/qiansi/zh4"} replace 
setblock -678 137 348 minecraft:repeating_command_block{Command:"execute as @p[x=-678,y=139,z=352,distance=..3] run function pld:system/ex_shen/check"} replace 
setblock -698 142 357 minecraft:command_block{Command:"execute as @p[x=-698,y=142,z=355,distance=..5] run function pld:system/ex_shen/reward"} replace 

fill -680 140 349 -680 139 349 air
data merge block -676 140 349 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zh4.text2"}','{"translate":"pl.sign.zh4.text3"}','{"translate":""}']}}

setblock -673 135 349 minecraft:command_block{Command:"execute as @p[x=-676,y=139,z=349,distance=..5] run function pld:system/truth/zhan/4/check_reward"} replace


data merge block -678 137 351 {Items:{}}
kill @e[type=villager,tag=!panling]
execute positioned -699 137 351 run function pld:npcs/qiansi/se4
execute positioned -678 135 355 run function pld:npcs/qiansi/zh3
execute positioned -679 135 346 run function pld:npcs/qiansi/zh4
#区块卸载
forceload remove -677 357 -696 349
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-43_24/pre 1t