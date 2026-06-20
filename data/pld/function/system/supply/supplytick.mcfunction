
execute if score @s supply5ticks matches 1.. run scoreboard players remove @s supply5ticks 1
execute if score @s supply5ticks matches 0 run function pld:system/supply/send_mail

#更新补救
execute if entity @s[tag=!is_selecting] unless score @s supply5ticks matches -1.. run scoreboard players set @s supply5ticks 18000
execute if score @s supply5ticks matches -1 run scoreboard players set @s supply5ticks 1