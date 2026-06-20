
#要做的事
data merge block -811 103 398 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -805 103 411 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi5.text2"}','{"translate":""}','{"translate":""}']}}


setblock -804 97 406 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat7"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -804 97 406 run function pld:npcs/qiansi/chat7
#区块卸载
forceload remove -809 397 -807 401
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-53_27/pre 1t