tellraw @s {"translate":"pl.info.test_ren.all_finish"}
scoreboard players set @s ren_test_earth 0
scoreboard players set @s ren_test_fire 0
scoreboard players set @s ren_test_wood 0
scoreboard players set @s ren_test_water 0
scoreboard players set @s ren_test_metal 0
execute if score @s ren_test_all matches 1 run function pld:test/ren/reward2
execute unless score @s ren_test_all matches 1 run function pld:test/ren/reward1
function pld:test/raceeffect_check
scoreboard players set @s feather_mainland 1
scoreboard players reset @s in_test_check
scoreboard players set @s test_effectlock 0
spawnpoint @s 205 54 -1771
tp @s 1732 123 176 0 ~