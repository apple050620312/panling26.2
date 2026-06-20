tellraw @s {"translate":"pl.info.test_ren.reward1a"}
tellraw @s {"translate":"pl.info.test.reward1b"}
scoreboard players set @s ren_test_all 1
scoreboard players set @s check_race_test 1
tellraw @s {"translate":"pl.info.menu_new"}
function pld:system/menubook/update/main
scoreboard players set @s test_bless 14
advancement grant @s only pld:other/test_ren