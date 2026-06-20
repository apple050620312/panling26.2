scoreboard players set @s success 0

function pld:system/test_inv/invmain
execute unless score @s inv_remain matches 1.. run tellraw @s {"translate":"pl.info.not_enough_inv_honor"}
execute if score @s inv_remain matches 1.. store result score @s success run clear @s redstone[custom_data={id:"panling:PGcoin"}] 0
execute if score @s success matches 1.. run function pld:system/gashapon/loot
execute if score @s inv_remain matches 1.. unless score @s success matches 1.. run tellraw @s {"translate":"pl.info.gashapon.failing"}
scoreboard players set @s success 0

