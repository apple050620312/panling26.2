#check
scoreboard players add @s arrow_lifetime 1
#如果这支箭存在时间超过了3分钟 那么kill它
execute if score @s arrow_lifetime matches 3600 run kill @s
