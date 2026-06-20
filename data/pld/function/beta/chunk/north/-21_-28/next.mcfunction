#要做的事
setblock -335 93 -445 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/xh5"}] replace
data merge block -330 98 -444 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xh5.text2"}','{"translate":"pl.sign.xh5.text3"}','{"translate":""}']}}

setblock -328 98 -445 minecraft:command_block[block_entity_data={Command:"execute as @p[x=-330,y=97,z=-445,distance=..5] run function pld:system/truth/xian/5/check_reward"}] replace


fill -330 98 -449 -330 98 -448 air
fill -328 97 -446 -328 98 -447 black_wool
kill @e[type=villager,tag=!panling]
execute positioned -335 93 -445 run function pld:npcs/north/xh5
#区块卸载
forceload remove -335 -445
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-21_-43/pre 1t