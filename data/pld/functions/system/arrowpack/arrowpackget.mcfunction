#箭支不足提示
tellraw @s[scores={arrowinpack=..31}] {"translate":"pl.info.arrowgetresis","color":"red"}
#给箭
execute store success score @s arrowsuccess run give @s[scores={arrowinpack=32..}] arrow 32
scoreboard players remove @s[scores={arrowsuccess=1..}] arrowinpack 32
#箭支取出提示
tellraw @s[scores={arrowsuccess=1..}] {"translate":"pl.info.arrowget","color":"yellow"}
scoreboard players reset @s arrowsuccess