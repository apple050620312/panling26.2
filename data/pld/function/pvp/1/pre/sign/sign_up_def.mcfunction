#如果已经报名 报名失敗
execute store result score #system pvp_def_count run execute if entity @a[scores={pvp_team=2}]
execute if score @s pvp_team matches 1..2 run tellraw @s [{"translate":"pl.info.has_signed"},{"translate":"pl.info.signed_count_def1"},{"score":{"name":"#system","objective":"pvp_def_count"},"bold":true},{"translate":"pl.info.signed_count_def2"}]

#战役未开启，报名失敗
execute unless score @s pvp_team matches 1..2 unless score #system pvpevent matches 1..2 run tellraw @s {"translate":"pl.pvp.info.pvp1.no_pvp1"}

#战役已经开始，报名失敗
execute unless score @s pvp_team matches 1..2 if score #system pvpevent matches 2 run tellraw @s {"translate":"pl.pvp.info.pvp1.def_late"}


#战役准备中，报名成功
execute unless score @s pvp_team matches 1..2 if score #system pvpevent matches 1 as @s run function pld:pvp/1/pre/sign/sign_up_def_success

