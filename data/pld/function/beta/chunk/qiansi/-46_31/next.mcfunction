
#要做的事
data merge block -736 103 506 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.ldp"}','{"translate":""}','{"translate":""}']}}
data merge block -744 103 506 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi6.text2"}','{"translate":""}','{"translate":""}']}}

setblock -733 97 505 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/tong4"}] replace

kill @e[type=villager,tag=!panling]
execute positioned -733 97 505 run function pld:npcs/qiansi/tong4
#区块卸载
forceload remove -734 508 -746 507
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-50_26/pre 1t