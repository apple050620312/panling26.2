#要做的事
data merge block 1361 78 72 {front_text:{messages:['{"translate":"pl.sign.leading_zhan1.text1"}','{"translate":"pl.sign.leading_zhan1.text2"}','{"translate":"pl.sign.leading_zhan1.text3"}','{"translate":"pl.sign.leading_zhan1.text4"}']}}
data merge block 1360 78 72 {front_text:{messages:['{"translate":"pl.sign.leading_zhan2.text1"}','{"translate":"pl.sign.leading_zhan2.text2"}','{"translate":"pl.sign.leading_zhan2.text3"}','{"translate":"pl.sign.leading_zhan2.text4"}']}}
data merge block 1361 77 72 {front_text:{messages:['{"translate":"pl.sign.leading_zhan4.text1"}','{"translate":"pl.sign.leading_zhan4.text2"}','{"translate":"pl.sign.leading_zhan4.text3"}','{"translate":"pl.sign.leading_zhan4.text4"}']}}
data merge block 1360 77 72 {front_text:{messages:['{"translate":"pl.sign.leading_zhan5.text1"}','{"translate":"pl.sign.leading_zhan5.text2"}','{"translate":"pl.sign.leading_zhan5.text3"}','{"translate":"pl.sign.leading_zhan5.text4"}']}}
data merge block 1362 78 69 {front_text:{messages:['{"translate":"pl.sign.leading_zhan7.text1"}','{"translate":"pl.sign.leading_zhan7.text2"}','{"translate":"pl.sign.leading_zhan7.text3"}','{"translate":"pl.sign.leading_zhan7.text4"}']}}
setblock 1366 75 70 minecraft:command_block{Command:"execute as @p[x=1366,y=77,z=70,distance=..2] run function pld:selections/race/select3"} replace 
setblock 1362 74 70 minecraft:command_block{Command:"function pld:npcs/select/leading_zhan"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 1362 74 70 run function pld:npcs/select/leading_zhan
#区块卸载
forceload remove 1364 72 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/75_-20 1t
