team join normal @s
tag @s add is_selecting
spawnpoint @s 1316 63 42
scoreboard players set @s race 0
scoreboard players set @s racefriend0 10
scoreboard players set @s racefriend1 -5
scoreboard players set @s racefriend2 10
scoreboard players set @s racefriend3 -15
scoreboard players set @s racefriend4 15
tellraw @s {"text":"","extra":[{"translate":"pl.selectrace1"},{"translate":"pl.selectrace2.shen"},{"translate":"pl.selectrace3"}]}
execute as @s run function pld:selections/race/selecttp 