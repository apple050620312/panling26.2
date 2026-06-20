

#根据种族以及补给情况发放邮件
execute if score @s race matches 0 unless score #system supply_add_shen matches 1 run function pld:system/supply/mails/0/normal 
execute if score @s race matches 0 if score #system supply_add_shen matches 1 run function pld:system/supply/mails/0/plus
execute if score @s race matches 1 unless score #system supply_add_yao matches 1 run function pld:system/supply/mails/1/normal 
execute if score @s race matches 1 if score #system supply_add_yao matches 1 run function pld:system/supply/mails/1/plus
execute if score @s race matches 2 unless score #system supply_add_xian matches 1 run function pld:system/supply/mails/2/normal 
execute if score @s race matches 2 if score #system supply_add_xian matches 1 run function pld:system/supply/mails/2/plus
execute if score @s race matches 3 unless score #system supply_add_zhan matches 1 run function pld:system/supply/mails/3/normal 
execute if score @s race matches 3 if score #system supply_add_zhan matches 1 run function pld:system/supply/mails/3/plus
execute if score @s race matches 4 unless score #system supply_add_ren matches 1 run function pld:system/supply/mails/4/normal 
execute if score @s race matches 4 if score #system supply_add_ren matches 1 run function pld:system/supply/mails/4/plus




scoreboard players set @s supply5ticks 36000

