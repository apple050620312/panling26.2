#要做的事
setblock 1366 75 13 minecraft:command_block[custom_data={Command:"execute as @p[x=1366,y=77,z=13,distance=..2] run function pld:selections/race/select1"}] replace 
setblock 1362 74 13 air
setblock 1362 74 10 minecraft:command_block[custom_data={Command:"function pld:npcs/select/leading_yao"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1362 74 10 run function pld:npcs/select/leading_yao
#区块卸载
forceload remove 1366 13 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/85_4/pre 1t
