#为每个没有记分板的兔子上记分板
execute unless score @s rabbit_existence_5ticks matches 0.. run scoreboard players set @s rabbit_existence_5ticks 0 

#记分板+1
execute if score @s rabbit_existence_5ticks matches 0.. run scoreboard players add @s rabbit_existence_5ticks 1

#当记分板达到某个值，让自己被删除
execute if score @s rabbit_existence_5ticks >= #system rabbit_existence_5ticks_max run function pld:system/less_rabbits/clear_rabbit
