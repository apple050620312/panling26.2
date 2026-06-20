#区块强加载
forceload add 1150 922
#要做的事
data merge block 1151 23 923 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance.a5.text2"}','{"translate":"pl.sign.instance2.text3"}','{"text":""}']}}
data merge block 1149 23 923 {front_text:{messages:['{"translate":"pl.sign.instance.a6.text1"}','{"translate":"pl.sign.instance.a6.text2"}','{"translate":"pl.sign.instance.a6.text3"}','{"translate":"pl.sign.instance.a6.text4"}']}}

setblock 1150 21 924 minecraft:command_block[custom_data={Command:"function pld:instances/instance2/check"}] replace 

#区块卸载
forceload remove 1150 922
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance2/72_54 1t