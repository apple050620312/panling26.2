#区块强加载
forceload add 1054 1402 1074 1404
#要做的事
setblock 1072 65 1406 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1072.5,71.0,1406.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 1067 62 1406 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1064.0,82.0,1409.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
data merge block 1055 72 1405 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.silverchest.text2"}','{"translate":"pl.sign.silverchest.text3"}','{"text":""}']}}
setblock 1055 69 1405 minecraft:command_block[custom_data={Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/silverchests/instance1/check"}] replace

setblock 1059 77 1397 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1059.5,83.0,1397.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 1054 1402 1074 1404
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/66_89 1t