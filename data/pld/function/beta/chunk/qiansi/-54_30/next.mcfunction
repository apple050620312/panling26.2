
#要做的事
data merge block -853 168 486 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi7.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -848 168 486 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi7.text2"}','{"translate":""}','{"translate":""}']}}


setblock -849 191 481 minecraft:command_block{Command:"function pld:npcs/qiansi/chat16"} replace
setblock -848 192 480 air
setblock -848 192 480 light_weighted_pressure_plate

kill @e[type=villager,tag=!panling]
execute positioned -849 191 481 run function pld:npcs/qiansi/chat16
#区块卸载
forceload remove -853 486 -848 486
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-45_29 1t