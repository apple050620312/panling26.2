execute unless entity @s[scores={process_ren_hide=8}] run tellraw @s {"translate":"pl.info.ren.hide.resis_reward"}
execute if entity @s[scores={process_ren_hide=8}] unless entity @s[scores={finish_ren_hide=1}] run function pld:system/truth/ren/4/reward
