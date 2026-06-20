#切换祝福cd
function pld:system/test_bless/act/act_cd

effect clear @s strength
effect clear @s health_boost

scoreboard players set @s test_bless_act 4
tellraw @s {"translate":"pl.info.test_bless.ren_act"}
function pld:system/test_bless/act/get_item

scoreboard players set @s test_bless -1