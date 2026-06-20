
#要做的事
setblock -583 104 189 minecraft:command_block[block_entity_data={Command:"function pld:npcs/west/westmain2"}] replace 
fill -584 108 187 -582 108 189 minecraft:gold_block
setblock -579 104 164 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-578.5,110.0,164.5],Tags:["west","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock -579 103 169 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-578.5,109.0,169.5],Tags:["west","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
kill @e[type=villager,tag=!panling]
execute positioned -583 104 189 run function pld:npcs/west/westmain2
#区块卸载
forceload remove -578 165 -580 187
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-53_-9/pre 1t