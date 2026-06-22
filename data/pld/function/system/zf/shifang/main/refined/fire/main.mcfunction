#给予本体buff 10秒
scoreboard players set @s zf_fire_tick 50

#掉落烈火印
summon item ^ ^1 ^2 {PickupDelay:10,Tags:["fire_mark"],Glowing:1,Age:5800,Item:{id:"minecraft:blaze_rod",count:1,components:{custom_data:{id:"panling:zf_fire_mark"}}},Motion:[0.0,0.0,0.0]}
summon item ^1.5 ^1 ^-1.5 {PickupDelay:10,Tags:["fire_mark"],Glowing:1,Age:5800,Item:{id:"minecraft:blaze_rod",count:1,components:{custom_data:{id:"panling:zf_fire_mark"}}},Motion:[0.0,0.0,0.0]}
summon item ^-1.5 ^1 ^-1.5 {PickupDelay:10,Tags:["fire_mark"],Glowing:1,Age:5800,Item:{id:"minecraft:blaze_rod",count:1,components:{custom_data:{id:"panling:zf_fire_mark"}}},Motion:[0.0,0.0,0.0]}

scoreboard players set @s zfsuccess 1