#区块强加载
forceload add 2724 -850 2703 -816
#要做的事
data merge block 2718 71 -828 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.11.text2"}','{"translate":"pl.sign.instance3.3.text3"}','{"text":""}']}}
data merge block 2716 71 -838 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.12.text2"}','{"text":""}','{"text":""}']}}
setblock 2717 70 -825 minecraft:command_block{Command:"tp @p[distance=..10] 2731 72 -835"} replace
setblock 2717 71 -840 minecraft:command_block{Command:"execute as @p[distance=..10] run function pld:instances/instance3/next_floor"} replace

data merge block 2731 73 -838 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.2.text2"}','{"translate":"pl.sign.instance3.2.text3"}','{"text":""}']}}
setblock 2731 70 -839 minecraft:command_block{Command:"execute as @p[distance=..10] run function pld:instances/instance3/reward"} replace 
data merge block 2731 73 -832 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.copperchest.text2"}','{"translate":"pl.sign.copperchest.text3"}','{"text":""}']}}
setblock 2731 70 -832 minecraft:command_block{Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/copperchests/instance1/check"} replace 
setblock 2715 32 -832 air
setblock 2705 28 -829 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2705.5,34.0,-828.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2705 28 -835 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2705.5,34.0,-834.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2712 28 -842 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2712.5,34.0,-841.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2715 28 -845 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,34.0,-844.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2718 28 -842 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2718.5,34.0,-841.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2715 28 -839 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,34.0,-838.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2725 28 -835 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2725.5,34.0,-834.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2725 28 -829 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2725.5,34.0,-828.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2715 28 -825 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,34.0,-824.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2712 28 -822 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2712.5,34.0,-821.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2715 28 -819 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2715.5,34.0,-818.5],Tags:["instance3","6_magma_cube"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock 2718 28 -822 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2718.5,34.0,-821.5],Tags:["instance3","6_zombie"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
execute positioned 2715 33 -832 run function pld:beta/chunk/instance3/add_fence

#区块卸载
forceload remove 2724 -850 2703 -816
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance3/170_-57 1t