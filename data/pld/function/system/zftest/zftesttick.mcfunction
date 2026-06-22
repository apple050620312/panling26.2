scoreboard players remove @s[scores={element_time=1..}] element_time 1

#execute if entity @s[scores={element_time=6700}] run summon creeper 1373 135 436 {Fuse:383s,ExplosionRadius:0,NoAI:0,CustomName:"",CustomNameVisible:0,Health:0.5f,Attributes:[{Name:"max_health",Base:1},{Name:"movement_speed",Base:0},{Name:"attack_damage",Base:0},{Name:"follow_range",Base:10},{Name:"knockback_resistance",Base:1}],DeathLootTable:"pld:empty"}
#execute if entity @s[scores={element_time=6400}] run execute as @e[type=creeper,x=1373,y=135,z=436,distance=..3] run function pld:system/tp_and_kill_self
#execute if entity @s[scores={element_time=4500}] run setblock 1373 135 436 chest 
#execute if entity @s[scores={element_time=4500}] run playsound block.anvil.use ambient @s 1373 135 436 1.0
#execute if entity @s[scores={element_time=4000}] run setblock 1373 135 436 air
#execute if entity @s[scores={element_time=3200}] run summon item 1373 135 436 {Item:{id:"minecraft:yellow_dye",count:1},PickupDelay:32767s,Age:-32768s}
#execute if entity @s[scores={element_time=3200}] run playsound entity.player.levelup ambient @s 1373 135 436 1.0
#execute if entity @s[scores={element_time=2500}] run kill @e[type=item,x=1373,y=135,z=436,distance=..3]
#execute if entity @s[scores={element_time=1600..,element_kill=1..}] as @s run function pld:system/zftest/testfailure
#execute if entity @s[scores={element_time=1600..,element_move=1..}] as @s run function pld:system/zftest/testfailure
#execute if entity @s[scores={element_time=1600..,element_chest=1..}] as @s run function pld:system/zftest/testfailure
#execute if entity @s[scores={element_time=1000..1500}] run particle smoke 1367 138 436 1 0 1 0 20
#execute if entity @s[scores={element_time=1400}] run tellraw @s[scores={element_time=1400}] {"translate": "pl.info.laojun_df_test"}
#execute if entity @s[scores={element_time=1..500}] run particle cloud 1367 138 436 1 0 1 0 10
#异步
execute if score @s element_time matches 1675 run summon creeper 1373 135 436 {Tags:["panling"],Fuse:383s,ExplosionRadius:0,NoAI:0,CustomName:"",CustomNameVisible:0,Health:0.5f,Attributes:[{Name:"max_health",Base:1},{Name:"movement_speed",Base:0},{Name:"attack_damage",Base:0},{Name:"follow_range",Base:10},{Name:"knockback_resistance",Base:1}],DeathLootTable:"pld:empty"}
execute if score @s element_time matches 1600 run execute as @e[type=creeper,x=1373,y=135,z=436,distance=..3] run function pld:system/tp_and_kill_self
execute if score @s element_time matches 1125 run setblock 1373 135 436 chest 
execute if score @s element_time matches 1125 run playsound block.anvil.use ambient @s 1373 135 436 1.0
execute if score @s element_time matches 1000 run setblock 1373 135 436 air
execute if score @s element_time matches 800 run summon item 1373 135 436 {Item:{id:"minecraft:yellow_dye",count:1},PickupDelay:32767s,Age:-32768s}
execute if score @s element_time matches 800 run playsound entity.player.levelup ambient @s 1373 135 436 1.0
execute if score @s element_time matches 625 run kill @e[type=item,x=1373,y=135,z=436,distance=..3]
execute if score @s element_time matches 400.. if score @s element_kill matches 1.. run function pld:system/zftest/testfailure
execute if score @s element_time matches 400.. if score @s element_movel matches 1.. run function pld:system/zftest/testfailure
execute if score @s element_time matches 400.. if score @s element_chestl matches 1.. run function pld:system/zftest/testfailure
execute if score @s element_time matches 250..375 run particle smoke 1367 138 436 1 0 1 0 20
execute if score @s element_time matches 350 run tellraw @s {"translate": "pl.info.laojun_df_test"}
execute if score @s element_time matches 1..125 run particle cloud 1367 138 436 1 0 1 0 10


execute if score @s element_time matches 0 run particle smoke 1367 138 436 1 0 1 0 20

