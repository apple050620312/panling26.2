execute unless entity @e[x=279,y=44,z=-23,dx=9,dy=7,dz=12,type=zombified_piglin] unless entity @e[x=279,y=44,z=-23,dx=9,dy=7,dz=12,type=skeleton] store success score @s success run tp @s 296 44 -27 130 0
execute unless entity @s[scores={success=1}] run tellraw @s {"translate":"pl.info.ze_out_battle_resistance"}
scoreboard players set @s success 0
scoreboard players set @s ex_zhan_battle 2