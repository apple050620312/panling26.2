
#要做的事
data merge block 3161 38 -195 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.zhan2.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}
data merge block 3161 38 -199 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.zhan2.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}
setblock 3161 34 -193 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 
setblock 3161 34 -201 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 
setblock 3139 41 -194 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 
setblock 3139 41 -200 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard2"}] replace 
setblock 3162 33 -204 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/chat13"}] replace
fill 3148 42 -195 3147 42 -195 minecraft:barrier replace
setblock 3146 42 -196 minecraft:barrier
setblock 3145 42 -194 minecraft:barrier
fill 3148 42 -199 3148 42 -198 minecraft:barrier
setblock 3147 42 -199 minecraft:barrier
fill 3145 42 -200 3145 42 -198 minecraft:barrier
setblock 3144 42 -199 minecraft:barrier
setblock 3143 42 -200 minecraft:barrier
fill 3142 42 -194 3143 42 -194 minecraft:barrier
setblock 3142 42 -195 minecraft:barrier
setblock 3138 43 -197 minecraft:command_block[custom_data={Command:"execute as @p[x=3138,y=45,z=-197,distance=..3] run function pld:test/zhan/incheck"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3162 33 -204 run function pld:npcs/zhan/chat13
execute positioned 3161 34 -193 run function pld:npcs/zhan/guard2
execute positioned 3161 34 -201 run function pld:npcs/zhan/guard2
execute positioned 3139 41 -194 run function pld:npcs/zhan/guard2
execute positioned 3139 41 -200 run function pld:npcs/zhan/guard2
#区块卸载
forceload remove 3160 -195 3141 -196
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/199_-22/pre 1t