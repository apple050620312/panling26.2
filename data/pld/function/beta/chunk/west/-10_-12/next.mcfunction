
#要做的事
data merge block -160 57 -181 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/execute as @p run function pld:system/ex_sword/get_sword_earth"}}','{"translate":"pl.sign.sword_earth.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -172 63 -180 {front_text:{messages:['{"translate":"pl.spsign.west2.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.west2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.west2.text2"}','{"translate":"pl.spsign.west2.text3"}','{"translate":""}']}}

setblock -173 61 -180 minecraft:command_block[custom_data={Command:"execute as @p[x=-172,y=62,z=-180,distance=..5] run function pld:pvp/3/pre/sign/sign_up_def"}] replace 
setblock -170 57 -180 minecraft:command_block[custom_data={Command:"function pld:npcs/west/pvp3_def"}] replace 


kill @e[type=villager,tag=!panling]
execute positioned -170 57 -180 run function pld:npcs/west/pvp3_def
#区块卸载
forceload remove -160 -181 -172 -180
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-12_1/pre 1t