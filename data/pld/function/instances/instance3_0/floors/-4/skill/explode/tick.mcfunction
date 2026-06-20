#如果boss血量首次低于60% 无敌并等待第一次释放技能
execute as @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] if score @s monster_health matches ..600 if score #system in3_skill_ep_count matches 0 run function pld:instances/instance3_0/floors/-4/skill/explode/waiting
#如果boss血量首次低于40% 无敌并等待第二次释放技能
#execute as @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] if score @s monster_health matches ..399 if score #system in3_skill_ep_count matches 2 run function pld:instances/instance3_0/floors/-4/skill/explode/waiting
#如果boss血量首次低于20% 无敌并等待第三次释放技能
execute as @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] if score @s monster_health matches ..199 if score #system in3_skill_ep_count matches 2 run function pld:instances/instance3_0/floors/-4/skill/explode/waiting

execute if score #system in3_skill_ep_load matches 0..100 run scoreboard players add #system in3_skill_ep_load 1
execute if score #system in3_skill_ep_load matches 100 run function pld:instances/instance3_0/floors/-4/skill/explode/main
execute if score #system in3_skill_ep2_load matches 0..600 run scoreboard players add #system in3_skill_ep2_load 1
execute if score #system in3_skill_ep2_load matches 600 run function pld:instances/instance3_0/floors/-4/skill/explode/end
#粒子效果
execute if score #system in3_skill_ep2_load matches 0..600 as @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849] at @s run function pld:instances/instance3_0/floors/-4/skill/explode/particle/explode/pre/check

#在鱼眼附近加tag
tag @a remove eye_0
tag @a remove eye_1
execute positioned 2834.5 31 -858.5 if block 2834 30 -859 end_stone run tag @a[distance=..3.5] add eye_1
execute positioned 2834.5 31 -838.5 if block 2834 30 -839 bedrock run tag @a[distance=..3.5] add eye_0
#如果检查到掉落物品 就把对应位置染色
execute positioned 2834.5 31 -858.5 if entity @e[distance=..4.5,type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:30}}}}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/0/0
execute positioned 2834.5 31 -858.5 if entity @e[distance=..4.5,type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:31}}}}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/0/1
execute positioned 2834.5 31 -838.5 if entity @e[distance=..4.5,type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:30}}}}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/1/0
execute positioned 2834.5 31 -838.5 if entity @e[distance=..4.5,type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:31}}}}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/1/1
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:31}}}}] run kill @s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{instance:30}}}}] run kill @s
execute as @a[nbt={Inventory:[{tag:{instance:30}}]}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/player/0
execute as @a[nbt={Inventory:[{tag:{instance:31}}]}] run function pld:instances/instance3_0/floors/-4/skill/explode/eye/player/1
#bossbar
execute if score #system in3_skill_ep_load matches 0..100 store result bossbar pld:instance3_0_ep_loading value run scoreboard players get #system in3_skill_ep_load
execute if score #system in3_skill_ep2_load matches 0..600 store result bossbar pld:instance3_0_ep_loading value run scoreboard players get #system in3_skill_ep2_load
