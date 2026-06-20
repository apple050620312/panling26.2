#要做的事
data merge block 1688 144 110 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren4.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1682 153 109 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1689 152 106 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren6.text2"}','{"translate":""}','{"translate":""}']}}
setblock 1687 139 105 minecraft:command_block{Command:"function pld:npcs/ren/renmain2"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 1687 139 105 run function pld:npcs/ren/renmain2
#区块卸载
forceload remove 1688 110
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/105_7/pre 1t