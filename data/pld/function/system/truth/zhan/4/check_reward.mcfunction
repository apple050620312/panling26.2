execute unless entity @s[scores={process_zhan_hide=8}] run tellraw @s {"translate":"pl.info.zhan.hide.resis_reward"}
execute if entity @s[scores={process_zhan_hide=8}] unless entity @s[scores={finish_zhan_hide=1}] run function pld:system/truth/zhan/4/reward
