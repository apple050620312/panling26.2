#要做的事
data merge block 1240 77 45 {front_text:{messages:['{"translate":"pl.sign.leading_shen9.text1"}','{"translate":"pl.sign.leading_shen9.text2"}','{"translate":"pl.sign.leading_shen9.text3"}','{"translate":"pl.sign.leading_shen9.text4"}']}}
setblock 1233 74 42 minecraft:command_block[custom_data={Command:"execute as @p[x=1233,y=76,z=42,distance=..2] run function pld:selections/race/select0"}] replace 
setblock 1242 73 45 minecraft:command_block[custom_data={Command:"function pld:npcs/select/leading_shen"}] replace
kill @e[type=villager,tag=!panling]
execute positioned 1242 73 45 run function pld:npcs/select/leading_shen
#区块卸载
forceload remove 1239 42 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/80_-1/pre 1t