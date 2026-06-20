tellraw @s {"translate":"pl.info.test_zhan.all_finish"}
scoreboard players set @s zhan_test_heart 0
scoreboard players set @s zhan_test_body 0
scoreboard players set @s zhan_test_speed 0
scoreboard players set @s zhan_test_skill 0
scoreboard players set @s zhan_test_power 0
execute if score @s zhan_test_all matches 1 run function pld:test/zhan/reward2
execute unless score @s zhan_test_all matches 1 run function pld:test/zhan/reward1
function pld:test/raceeffect_check
scoreboard players set @s feather_mainland 1
scoreboard players reset @s in_test_check
scoreboard players set @s test_effectlock 0
spawnpoint @s 205 54 -1771
tp @s 3141 45 -197 -90 ~