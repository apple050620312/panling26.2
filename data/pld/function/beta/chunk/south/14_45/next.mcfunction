
#要做的事
data merge block 239 18 729 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.south6.text2"}','{"translate":"pl.sign.south6.text3"}','{"translate":""}']}}

setblock 245 12 720 minecraft:command_block[custom_data={Command:"function pld:npcs/south/southmain4"}] replace 
setblock 238 18 731 minecraft:command_block[custom_data={Command:"tp @p[distance=..6] 238 75 759"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 245 12 720 run function pld:npcs/south/southmain4
#区块卸载
forceload remove 238 729 242 722
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/23_47/pre 1t