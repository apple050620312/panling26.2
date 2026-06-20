tellraw @s {"translate":"pl.info.test_shen.all_finish"}
scoreboard players set @s shen_test_star 0
scoreboard players set @s shen_test_sea 0
scoreboard players set @s shen_test_forest 0
scoreboard players set @s shen_test_mont 0
scoreboard players set @s shen_test_sun 0
execute if score @s shen_test_all matches 1 run function pld:test/shen/reward2
execute unless score @s shen_test_all matches 1 run function pld:test/shen/reward1
function pld:test/raceeffect_check
scoreboard players set @s feather_mainland 1
scoreboard players reset @s in_test_check
scoreboard players set @s test_effectlock 0
spawnpoint @s 205 54 -1771
tp @s 3267 99 263 45 ~