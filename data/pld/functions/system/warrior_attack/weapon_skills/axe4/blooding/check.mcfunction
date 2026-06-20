#根据目标的blood_uid 找到对应的marker
tag @s add blood_tag
execute as @e[type=marker] if score @s blood_uid = @e[tag=blood_tag,limit=1] blood_uid run tag @s add blooding

#如果没有流血，置零并清理marker
execute unless data entity @e[type=marker,tag=blooding,limit=1] data.blooding[0] run scoreboard players set @s blooded 0
execute unless data entity @e[type=marker,tag=blooding,limit=1] data.blooding[0] run scoreboard players set @s blood_uid 0
execute unless data entity @e[type=marker,tag=blooding,limit=1] data.blooding[0] as @e[type=marker,tag=blooding,limit=1] run kill @s 
execute if data entity @e[type=marker,tag=blooding,limit=1] data.blooding[0] run function pld:system/warrior_attack/weapon_skills/axe4/blooding/main

#将marker tp过来
tp @e[type=marker,tag=blooding] @s

#清理tag
tag @s remove blood_tag
tag @e[type=marker,tag=blooding] remove blooding

