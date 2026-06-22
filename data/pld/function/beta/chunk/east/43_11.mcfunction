#区块强加载
forceload add 697 185 697 195
#要做的事
data merge block 694 66 183 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east7.text2"}','{"text":""}','{"text":""}']}}
setblock 700 56 190 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[700.5,62.5,190.5],Tags:["east","zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 698 55 193 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[698.5,61.5,193.5],Tags:["east","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 691 59 180 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[691.5,65.5,180.5],Tags:["east","spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 700 53 200 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[700.5,59.5,200.5],Tags:["east","spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 697 185 697 195
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/43_13 1t