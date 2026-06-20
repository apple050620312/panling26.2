execute as @s[scores={job=1}] store result score @s arrowcount run clear @s minecraft:arrow 0
execute if score @s arrowcount matches ..16 run function pld:system/test_inv/invmain
execute store success score @s success run give @s[scores={arrowcount=0,arrowinpack=32..,inv_remain=1..}] arrow 32
execute unless score @s success matches 1 store success score @s success run give @s[scores={arrowcount=1..16,arrowinpack=32..}] arrow 32
scoreboard players remove @s[scores={success=1}] arrowinpack 32
tellraw @s[scores={success=1}] {"translate": "pl.info.arrow_auto_success"}
scoreboard players set @s success 0 

