#切换祝福cd
function pld:system/test_bless/act/act_cd

effect clear @s resistance
effect clear @s strength
scoreboard players set @s test_bless_act 0
tellraw @s {"translate":"pl.info.test_bless.shen_act"}
function pld:system/test_bless/act/get_item

scoreboard players set @s test_bless -1