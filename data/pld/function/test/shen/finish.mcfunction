execute unless entity @s[scores={shen_test_sea=1,shen_test_forest=1,shen_test_star=1,shen_test_mont=1,shen_test_sun=1}] run tellraw @s {"translate":"pl.info.test_shen.not_all_finish"}
execute if entity @s[scores={shen_test_sea=1,shen_test_forest=1,shen_test_star=1,shen_test_mont=1,shen_test_sun=1}] run function pld:test/shen/reward
