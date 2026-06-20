#如果已经报名 报名失败
execute store result score #system pvp_atk_count run execute if entity @a[scores={pvp_team=5}]
execute if score @s pvp_team matches 5..6 run tellraw @s [{"translate":"pl.info.has_signed"},{"translate":"pl.info.signed_count_atk1"},{"score":{"name":"#system","objective":"pvp_atk_count"},"bold":true},{"translate":"pl.info.signed_count_atk2"}]

#如果当前有其他战役，报名失败
execute unless score @s pvp_team matches 5..6 if score #system pvpevent matches 1..4 run tellraw @s {"translate":"pl.pvp.info.pvp3.other_pvp"}
#战役已经开始，报名失败
execute unless score @s pvp_team matches 5..6 if score #system pvpevent matches 6 run tellraw @s {"translate":"pl.pvp.info.pvp3.atk_late"}

#战役准备中，报名成功
execute unless score @s pvp_team matches 5..6 if score #system pvpevent matches 5 as @s run function pld:pvp/3/pre/sign/sign_up_atk_success

#当前没有战役，但是战役在cd中
execute unless score @s pvp_team matches 5..6 unless score #system pvpevent matches 1.. if score #system pvp3_delay matches 0.. run tellraw @s {"translate":"pl.pvp.info.pvp3.atk_cd"}
#如果当前没有战役，则发起战役
execute unless score @s pvp_team matches 5..6 unless score #system pvpevent matches 1.. unless score #system pvp3_delay matches 0.. as @s run function pld:pvp/3/pre/initiate

