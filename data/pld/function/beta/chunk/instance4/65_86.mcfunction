#区块强加载
forceload add 1049 1382 1069 1380
#要做的事
setblock 1062 81 1383 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1062.5,87.0,1383.5],Tags:["instance4","skeleton1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
setblock 1066 80 1385 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[1069.0,87.0,1397.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy
fill 1045 84 1378 1049 84 1378 minecraft:command_block{Command:"tp @p[distance=..3] 1259 71 1286"} replace

#区块卸载
forceload remove 1049 1382 1069 1380
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/65_87 1t