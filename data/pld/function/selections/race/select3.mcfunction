team join normal @s
tag @s add is_selecting
spawnpoint @s 1316 63 42
scoreboard players set @s race 3
scoreboard players set @s racefriend0 -15
scoreboard players set @s racefriend1 15
scoreboard players set @s racefriend2 -5
scoreboard players set @s racefriend3 20
scoreboard players set @s racefriend4 -1
tellraw @s {"text":"","extra":[{"translate":"pl.selectrace1"},{"translate":"pl.selectrace2.zhan"},{"translate":"pl.selectrace3"}]}
execute as @s run function pld:selections/race/selecttp