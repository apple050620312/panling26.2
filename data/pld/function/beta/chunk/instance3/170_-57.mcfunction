#区块强加载
forceload add 2727 -899 2701 -873
#要做的事
data merge block 2714 28 -895 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.2.text2"}','{"translate":"pl.sign.instance3.2.text3"}','{"text":""}']}}
setblock 2714 25 -895 minecraft:command_block{Command:"execute as @p[distance=..10] run function pld:instances/instance3/reward"} replace 
data merge block 2714 28 -880 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.goldchest.text2"}','{"translate":"pl.sign.goldchest.text3"}','{"text":""}']}}
setblock 2714 25 -881 minecraft:command_block{Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/goldchests/instance3/check"} replace 
setblock 2709 28 -887 minecraft:ender_chest[facing=east]
setblock 2719 28 -887 minecraft:ender_chest[facing=west]
setblock 2726 63 -873 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2726.5,69.0,-872.5],Tags:["instance3","10_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2715 63 -868 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,69.0,-867.5],Tags:["instance3","10_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2725 63 -897 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2725.5,69.0,-896.5],Tags:["instance3","10_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2731 63 -885 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2731.5,69.0,-884.5],Tags:["instance3","10_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2705 63 -894 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2705.5,69.0,-893.5],Tags:["instance3","10_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2715 63 -901 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,69.0,-900.5],Tags:["instance3","10_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2704 63 -875 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2704.5,69.0,-874.5],Tags:["instance3","10_wither_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock 2698 63 -885 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2698.5,69.0,-884.5],Tags:["instance3","10_skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1},MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy

execute positioned 2715 68 -885 run function pld:beta/chunk/instance3/add_fence

fill 2714 71 -895 2714 70 -895 barrier
fill 2714 71 -894 2715 71 -894 barrier
fill 2714 70 -875 2714 71 -875 barrier
fill 2714 71 -876 2715 71 -876 barrier

#区块卸载
forceload remove 2727 -899 2701 -873
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance3/171_-54 1t