#区块强加载
forceload add 986 1494 997 1527
forceload add 990 1475
forceload add 1014 1529
#要做的事
setblock 1013 57 1533 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1013.5,63.0,1533.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 1006 57 1490 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1006.5,63.0,1490.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 971 57 1487 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[971.5,63.0,1487.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 977 56 1528 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[977.5,62.0,1528.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 986 55 1504 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[986.5,61.0,1504.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

data merge block 991 69 1479 {front_text:{messages:['{"translate":"pl.sign.instance4.1.text1"}','{"translate":"pl.sign.instance4.1.text2"}','{"translate":"pl.sign.instance4.1.text3"}','{"text":""}']}}

setblock 981 56 1530 air
setblock 981 49 1530 air
setblock 1000 56 1524 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1001.0,86.0,1523.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 1005 54 1510 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1007.0,89.0,1496.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

setblock 985 56 1493 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[982.0,96.0,1494.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy


setblock 991 67 1476 minecraft:repeating_command_block[block_entity_data={Command:"function pld:instances/instance4/area2_check"}] replace

#区块卸载
forceload remove 986 1494 997 1527
forceload remove 990 1475
forceload remove 1014 1529
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/62_87 1t