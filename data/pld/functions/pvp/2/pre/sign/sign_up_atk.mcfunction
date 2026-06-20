#如果已经报名 报名失败
execute store result score #system pvp_atk_count run execute if entity @a[scores={pvp_team=3}]
execute if score @s pvp_team matches 3..4 run tellraw @s [{"translate":"pl.info.has_signed"},{"translate":"pl.info.signed_count_atk1"},{"score":{"name":"#system","objective":"pvp_atk_count"},"bold":true},{"translate":"pl.info.signed_count_atk2"}]


#如果当前有其他战役，报名失败
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 1..2 run tellraw @s {"translate":"pl.pvp.info.pvp2.other_pvp"}
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 5..6 run tellraw @s {"translate":"pl.pvp.info.pvp2.other_pvp"}
#战役已经开始，报名失败
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 4 run tellraw @s {"translate":"pl.pvp.info.pvp2.atk_late"}

#战役准备中，报名成功
execute unless score @s pvp_team matches 3..4 if score #system pvpevent matches 3 as @s run function pld:pvp/2/pre/sign/sign_up_atk_success

#当前没有战役，但是战役在cd中
execute unless score @s pvp_team matches 3..4 unless score #system pvpevent matches 1.. if score #system pvp2_delay matches 0.. run tellraw @s {"translate":"pl.pvp.info.pvp2.atk_cd"}
#如果当前没有战役，则发起战役
execute unless score @s pvp_team matches 3..4 unless score #system pvpevent matches 1.. unless score #system pvp2_delay matches 0.. as @s run function pld:pvp/2/pre/initiate

