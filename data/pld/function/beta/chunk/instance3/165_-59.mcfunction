#区块强加载 #floor8
forceload add 2675 -950 2650 -923
#要做的事
data merge block 2665 71 -934 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.17.text2"}','{"translate":"pl.sign.instance3.3.text3"}','{"text":""}']}}
data merge block 2663 71 -944 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.18.text2"}','{"text":""}','{"text":""}']}}
data merge block 2665 71 -944 {front_text:{messages:['{"translate":"pl.sign.instance.a6.text1"}','{"translate":"pl.sign.instance3.a6.text2"}','{"translate":"pl.sign.instance.a6.text3"}','{"translate":"pl.sign.instance.a6.text4"}']}}
setblock 2664 70 -931 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..10] 2678 72 -939"}] replace
setblock 2664 71 -946 minecraft:command_block[block_entity_data={Command:"function pld:instances/instance3/check"}] replace
data merge block 2678 73 -942 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.2.text2"}','{"translate":"pl.sign.instance3.2.text3"}','{"text":""}']}}
setblock 2678 70 -942 minecraft:command_block[block_entity_data={Command:"execute as @p[distance=..10] run function pld:instances/instance3/reward"}] replace 
data merge block 2678 73 -936 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.silverchest.text2"}','{"translate":"pl.sign.silverchest.text3"}','{"text":""}']}}
setblock 2678 70 -936 minecraft:command_block[block_entity_data={Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/silverchests/instance1/check"}] replace 
setblock 2662 32 -938 air
setblock 2672 28 -935 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2672.5,34.0,-934.5],Tags:["instance3","9_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2672 28 -941 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2672.5,34.0,-940.5],Tags:["instance3","9_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2662 28 -945 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2662.5,34.0,-944.5],Tags:["instance3","9_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2665 28 -948 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2665.5,34.0,-947.5],Tags:["instance3","9_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2652 28 -935 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2652.5,34.0,-934.5],Tags:["instance3","9_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2652 28 -941 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2652.5,34.0,-940.5],Tags:["instance3","9_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
execute positioned 2662 33 -938 run function pld:beta/chunk/instance3/add_fence

setblock 2665 28 -928 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2665.5,34.0,-927.5],Tags:["instance3","9_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2662 28 -931 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2662.5,34.0,-930.5],Tags:["instance3","9_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy


#区块卸载
forceload remove 2675 -950 2650 -923
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"165 -59: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/instance3/167_-55 1t