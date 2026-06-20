#区块强加载
forceload add 1781 -153 1749 -182
#要做的事
setblock 1759 18 -180 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1759.5,24.0,-179.5],Tags:["test_ren","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy
setblock 1776 18 -173 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1776.5,24.0,-172.5],Tags:["test_ren","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

setblock 1769 18 -180 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1769.5,24.0,-179.5],Tags:["test_ren","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy
setblock 1776 18 -168 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1776.5,24.0,-167.5],Tags:["test_ren","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

setblock 1769 18 -156 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1769.5,24.0,-155.5],Tags:["test_ren","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

setblock 1759 18 -156 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1759.5,24.0,-155.5],Tags:["test_ren","wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

setblock 1752 18 -168 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1752.5,24.0,-167.5],Tags:["test_ren","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

setblock 1752 18 -163 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1752.5,24.0,-162.5],Tags:["test_ren","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:100s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 1781 -153 1749 -182
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/111_-14 1t