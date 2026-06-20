#区块强加载
forceload add 2842 -458 2853 -471
#要做的事
data merge block 2848 24 -476 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance.a4.text2"}','{"translate":"pl.sign.instance.a4.text3"}','{"text":""}']}}
data merge block 2832 24 -462 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.silverchest.text2"}','{"translate":"pl.sign.silverchest.text3"}','{"text":""}']}}
setblock 2832 21 -462 minecraft:command_block[custom_data={Command:"execute as @p[distance=..6] positioned ~ ~3 ~ run function pld:system/chests/silverchests/instance1/check"}] replace 
setblock 2852 24 -459 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2851.5,23.5,-459.5],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2834 24 -460 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2836.0,23.5,-461.5],Tags:["instance1","husk"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy
setblock 2846 25 -469 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2844.5,23.5,-466.5],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s}] destroy

#区块卸载
forceload remove 2842 -458 2853 -471
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/178_-26 1t