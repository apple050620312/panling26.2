#区块强加载
forceload add 1865 -794
#要做的事
setblock 1867 54 -795 minecraft:spawner[block_entity_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1846.0,67.0,-795.0],Tags:["west","tiger_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:400s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

kill @e[type=minecraft:item]

#区块卸载
forceload remove 1865 -794
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/116_-51 1t