#标记喂食玩家
tag @p[x=1259,y=80,z=1398,distance=..5,scores={instance4_mouth=1}] add food_mtgod
scoreboard players set @p[x=1259,y=80,z=1398,distance=..5,tag=food_mtgod] instance4_mouth 0
#检测投食物品，记分板标记权重
scoreboard players set #system instance4_food 0
#食物类（额外奖励）
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:apple"}}] run scoreboard players set #system instance4_food 1
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:dried_kelp"}}] run scoreboard players set #system instance4_food 1
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:melon_slice"}}] run scoreboard players set #system instance4_food 1

execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:bread"}}] run scoreboard players set #system instance4_food 2
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:baked_potato"}}] run scoreboard players set #system instance4_food 2
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_cod"}}] run scoreboard players set #system instance4_food 2
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:mushroom_stew"}}] run scoreboard players set #system instance4_food 2

execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_chicken"}}] run scoreboard players set #system instance4_food 3
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_mutton"}}] run scoreboard players set #system instance4_food 3
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_rabbit"}}] run scoreboard players set #system instance4_food 3
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_salmon"}}] run scoreboard players set #system instance4_food 3

execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_beef"}}] run scoreboard players set #system instance4_food 4
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:cooked_porkchop"}}] run scoreboard players set #system instance4_food 4
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:pumpkin_pie"}}] run scoreboard players set #system instance4_food 4
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:golden_carrot"}}] run scoreboard players set #system instance4_food 4

#杂物类（惩罚，并没有奖励）
execute if block 1259 79 1399 minecraft:hopper{Items:[{id:"minecraft:arrow"}}] run scoreboard players set #system instance4_food -1
execute if block 1259 79 1399 minecraft:hopper{Items:[{tag:{id:"panling:killpotion"}}] run scoreboard players set #system instance4_food -10

#根据权重，给予玩家奖励
execute if score #system instance4_food matches 0 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/0
execute if score #system instance4_food matches 1 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/1
execute if score #system instance4_food matches 2 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/2
execute if score #system instance4_food matches 3 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/3
execute if score #system instance4_food matches 4 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/4
execute if score #system instance4_food matches -1 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/-1
execute if score #system instance4_food matches -10 as @p[tag=food_mtgod] run function pld:instances/instance4/mtgod/-10

#回收玩家标记
tag @a[tag=food_mtgod] remove food_mtgod

data merge block 1259 79 1399 {Items:[]}
tellraw @a[x=1259,y=80,z=1398,distance=..5,scores={instance4_mouth=0}] {"translate":"pl.info.instance4.full"}