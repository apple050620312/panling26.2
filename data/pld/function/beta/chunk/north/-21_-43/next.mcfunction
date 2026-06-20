#要做的事
setblock -336 13 -686 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/northmain2"}] replace 
setblock -333 18 -701 minecraft:command_block[block_entity_data={Command:"function pld:system/spawnpoint/spawnpointset"}] replace 
setblock -340 17 -696 minecraft:command_block[block_entity_data={Command:"execute as @p[x=-340,y=19,z=-696,distance=..2] run function pld:system/altars/turtle/turtlecheck"}] replace 
kill @e[type=villager,tag=!panling] 
setblock -341 18 -694 minecraft:hopper[block_entity_data={CustomName:'{"translate":"pl.info.turtle_metal"}'}] destroy
setblock -343 18 -696 minecraft:hopper[block_entity_data={CustomName:'{"translate":"pl.info.turtle_wood"}'}] destroy
setblock -342 18 -698 minecraft:hopper[block_entity_data={CustomName:'{"translate":"pl.info.turtle_water"}'}] destroy
setblock -340 18 -699 minecraft:hopper[block_entity_data={CustomName:'{"translate":"pl.info.turtle_fire"}'}] destroy
setblock -338 18 -697 minecraft:hopper[block_entity_data={CustomName:'{"translate":"pl.info.turtle_earth"}'}] destroy
fill -341 14 -693 -342 14 -697 air
execute positioned -336 13 -686 run function pld:npcs/north/northmain2
#区块卸载
forceload remove -327 -686 -338 -693
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/9_-34/pre 1t