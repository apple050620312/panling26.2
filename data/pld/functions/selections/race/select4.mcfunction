team join normal @s
tag @s add is_selecting
spawnpoint @s 1316 63 42
scoreboard players set @s race 4
scoreboard players set @s racefriend0 -2
scoreboard players set @s racefriend1 -20
scoreboard players set @s racefriend2 10
scoreboard players set @s racefriend3 -9
scoreboard players set @s racefriend4 15
tellraw @s {"text":"","extra":[{"translate":"pl.selectrace1"},{"translate":"pl.selectrace2.ren"},{"translate":"pl.selectrace3"}]}
execute as @s run function pld:selections/race/selecttp