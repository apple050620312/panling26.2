execute unless entity @s[scores={process_yao_hide=10}] run tellraw @s {"translate":"pl.info.yao.hide.resis_reward"}
execute if entity @s[scores={process_yao_hide=10}] unless entity @s[scores={finish_yao_hide=1}] run function pld:system/truth/yao/5/reward
