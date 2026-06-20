#根据记分板数值更新玩家当前血量
#输入 @s damage 两位小数 玩家本次受到伤害

#获取本实体当前生命值
execute store result score #health damage run data get entity @s Health 100
scoreboard players operation #health damage -= @s damage
execute if score #health damage matches ..100 run kill @s
execute if score #health damage matches 100.. run function pld:pre/damage/reduce_health


#清理记分板
scoreboard players reset @s damage

