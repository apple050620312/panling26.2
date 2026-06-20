#兔子已存在时间
scoreboard objectives add rabbit_existence_5ticks dummy

#兔子存在上限时间 5ticks 
scoreboard objectives add rabbit_existence_5ticks_max dummy
#设置为三分钟 3*60*5
scoreboard players set #system rabbit_existence_5ticks_max 900