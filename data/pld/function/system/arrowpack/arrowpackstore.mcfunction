#箭袋满了 提示
execute if score @s arrowinpack matches 640.. run tellraw @s {"translate":"pl.info.arrowpack_full","color":"red"}
#主手箭支数量获取
execute store result score @s arrowselected run data get entity @s SelectedItem.count
#箭支不足提示
tellraw @s[scores={arrowselected=..31}] {"translate":"pl.info.arrowstoreresis","color":"red"}
#存箭
execute if score @s arrowinpack matches ..639 store success score @s arrowsuccess run clear @s[scores={arrowselected=32..}] arrow 32
scoreboard players add @s[scores={arrowsuccess=1..}] arrowinpack 32
#箭支存入提示
tellraw @s[scores={arrowsuccess=1..}] {"translate":"pl.info.arrowstore","color":"yellow"}
title @s[scores={arrowsuccess=1..}] actionbar {"text":"","extra":[{"translate":"pl.info.arrowinpack1","color":"red","bold":"true"},{"score":{"name":"@s","objective":"arrowinpack"}},{"translate":"pl.info.arrowinpack2","color":"red","bold":"true"}]}
scoreboard players reset @s arrowsuccess

