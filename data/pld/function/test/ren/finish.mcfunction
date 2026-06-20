execute unless entity @s[scores={ren_test_earth=1,ren_test_fire=1,ren_test_metal=1,ren_test_water=1,ren_test_wood=1}] run tellraw @s {"translate":"pl.info.test_ren.not_all_finish"}
execute if entity @s[scores={ren_test_earth=1,ren_test_fire=1,ren_test_metal=1,ren_test_water=1,ren_test_wood=1}] run function pld:test/ren/reward
