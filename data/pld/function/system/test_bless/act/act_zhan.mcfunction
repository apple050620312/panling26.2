#切换祝福cd
function pld:system/test_bless/act/act_cd
effect clear @s health_boost
effect clear @s resistance
scoreboard players set @s test_bless_act 3
tellraw @s {"translate":"pl.info.test_bless.zhan_act"}
function pld:system/test_bless/act/get_item

scoreboard players set @s test_bless -1