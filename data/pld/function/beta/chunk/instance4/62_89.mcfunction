#区块强加载
forceload add 1002 1428
#要做的事
setblock 1002 50 1427 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[998.0,84.0,1418.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 1002 1428
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/63_86 1t