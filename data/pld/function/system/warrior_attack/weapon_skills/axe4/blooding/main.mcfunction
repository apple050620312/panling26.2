#流血中
#清空中介用tamp
data modify storage pld:system blooding_temp set value 
data modify storage pld:system blooding_temp2 set value 

#复制目标的blood相关信息
data modify storage pld:system blooding_temp set from entity @e[type=marker,tag=blooding,limit=1] data.blooding

#为所有的流血倒数一次
function pld:system/warrior_attack/weapon_skills/axe4/blooding/loop

#将倒数完的nbt存回目标的marker
data modify entity @e[type=marker,tag=blooding,limit=1] data.blooding set from storage pld:system blooding_temp2

