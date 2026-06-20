#检查是否有owner的实体
tag @s add fireball_check

scoreboard players set @s success 0
execute as @e[type=blaze] run function pld:system/fire_ball/check_main


execute if score @s success matches 0 run kill @s


tag @s remove fireball_check
