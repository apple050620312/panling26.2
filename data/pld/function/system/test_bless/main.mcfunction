execute if entity @s[scores={bless_cool=0..}] run title @s actionbar {"translate":"pl.info.test_bless.cooling"}
execute unless entity @s[scores={bless_cool=0..}] if entity @s[scores={test_bless_act=4}] run function pld:system/test_bless/ren/main

#因为在此结算，所以不再检查剩余
scoreboard players set @s right_click_check 0