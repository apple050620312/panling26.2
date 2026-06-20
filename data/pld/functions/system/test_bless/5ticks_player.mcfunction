execute as @s[scores={bless_cool=0,test_bless_act=0}] run function pld:system/test_bless/shen/cooldown
execute as @s[scores={bless_cool=0,test_bless_act=0..}] run title @s actionbar {"translate":"pl.info.test_bless.cooldown"}
execute as @s[scores={bless_cool=0..}] unless entity @s[scores={inpvp=1}] run scoreboard players remove @s bless_cool 1

#判定激活哪个
execute as @s[scores={test_bless=10,shen_test_all=1}] unless entity @s[scores={blessSwitch_cool=0..}] run function pld:system/test_bless/act/act_shen
execute as @s[scores={test_bless=13,zhan_test_all=1}] unless entity @s[scores={blessSwitch_cool=0..}] run function pld:system/test_bless/act/act_zhan
execute as @s[scores={test_bless=14,ren_test_all=1}] unless entity @s[scores={blessSwitch_cool=0..}] run function pld:system/test_bless/act/act_ren

execute as @s[scores={test_bless=10}] unless entity @s[scores={shen_test_all=1}] run tellraw @s {"translate":"pl.info.test_bless.not_gotten"}
execute as @s[scores={test_bless=13}] unless entity @s[scores={zhan_test_all=1}] run tellraw @s {"translate":"pl.info.test_bless.not_gotten"}
execute as @s[scores={test_bless=14}] unless entity @s[scores={ren_test_all=1}] run tellraw @s {"translate":"pl.info.test_bless.not_gotten"}

title @s[scores={blessSwitch_cool=1..,test_bless=10..}] actionbar {"translate":"pl.info.test_bless.switch.cooling"}
execute as @s[scores={blessSwitch_cool=0}] run title @s actionbar {"translate":"pl.info.test_bless.switch.cooldown"}
scoreboard players remove @s[scores={blessSwitch_cool=0..}] blessSwitch_cool 1
scoreboard players enable @s test_bless
scoreboard players set @s[scores={test_bless=0..}] test_bless -1

