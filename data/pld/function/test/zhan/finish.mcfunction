execute unless entity @s[scores={zhan_test_heart=1,zhan_test_speed=1,zhan_test_power=1,zhan_test_skill=1,zhan_test_body=1}] run tellraw @s {"translate":"pl.info.test_zhan.not_all_finish"}
execute if entity @s[scores={zhan_test_heart=1,zhan_test_speed=1,zhan_test_power=1,zhan_test_skill=1,zhan_test_body=1}] run function pld:test/zhan/reward
