#区块强加载 179 -30 179 -32
forceload add 2877 -471 2876 -501
#要做的事
data merge block 2874 24 -485 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance.a1.text2"}','{"text":""}','{"text":""}']}}
data merge block 2874 24 -488 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance.a2.text2"}','{"text":""}','{"text":""}']}}
data merge block 2870 24 -509 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.copperchest.text2"}','{"translate":"pl.sign.copperchest.text3"}','{"text":""}']}}

setblock 2873 20 -487 minecraft:command_block{Command:"tp @p[distance=..4] 2871 24 -486"} replace 
setblock 2870 21 -509 minecraft:command_block{Command:"execute as @p[distance=..6] positioned ~ ~3 ~ run function pld:system/chests/copperchests/instance1/check"} replace 

setblock 2865 24 -467 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2863.5,23.5,-467.5],Tags:["instance1","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2866 24 -468 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2866.5,23.5,-470.5],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2875 25 -498 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2872.0,23.5,-497.5],Tags:["instance1","husk"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

setblock 2872 25 -476 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2869.5,23.5,-475.5],Tags:["instance1","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2868 24 -507 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2870.5,23.5,-504.5],Tags:["instance1","zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 2877 -471 2876 -501
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/180_-29 1t