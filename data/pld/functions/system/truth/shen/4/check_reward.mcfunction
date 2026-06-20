execute unless entity @s[scores={process_shen_hide=8}] run tellraw @s {"translate":"pl.info.shen.hide.resis_reward"}
execute if entity @s[scores={process_shen_hide=8}] unless entity @s[scores={finish_shen_hide=1}] run function pld:system/truth/shen/4/reward
