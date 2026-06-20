execute store success score @s success unless score @s arrowpack_auto matches 1 run scoreboard players set @s arrowpack_auto 1
execute unless score @s success matches 1 run scoreboard players set @s[scores={arrowpack_auto=1}] arrowpack_auto 0
tellraw @s[scores={arrowpack_auto=0}] {"translate": "pl.info.arrow_auto_close"}
tellraw @s[scores={arrowpack_auto=1}] {"translate": "pl.info.arrow_auto_open"}
scoreboard players set @s success 0
scoreboard players set @s right_click_check 0
scoreboard players set @s sneak_check 0
scoreboard players reset @a menu
