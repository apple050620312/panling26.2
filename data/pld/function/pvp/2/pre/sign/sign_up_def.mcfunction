#如果已经报名 报名失敗
execute store result score #system pvp_def_count run execute if entity @a[scores={pvp_team=4}]
execute if score @s pvp_team matches 3..4 run tellraw @s [{"translate":"pl.info.has_signed"},{"translate":"pl.info.signed_count_def1"},{"score":{"name":"#system","objective":"pvp_def_count"},"bold":true},{"translate":"pl.info.signed_count_def2"}]
#战役未开启，报名失敗
execute unless score @s pvp_team matches 3..4 unless score #system pvpevent matches 3..4 run tellraw @s {"translate":"pl.pvp.info.pvp2.no_pvp2"}
#战役已经开始，报名失敗
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 4 run tellraw @s {"translate":"pl.pvp.info.pvp2.def_late"}

#战役准备中，报名成功
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 3 as @s run function pld:pvp/2/pre/sign/sign_up_def_success

