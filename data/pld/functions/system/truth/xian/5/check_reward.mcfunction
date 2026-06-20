execute unless entity @s[scores={process_xian_hide=10}] run tellraw @s {"translate":"pl.info.xian.hide.resis_reward"}
execute if entity @s[scores={process_xian_hide=10}] unless entity @s[scores={finish_xian_hide=1}] run function pld:system/truth/xian/5/reward
