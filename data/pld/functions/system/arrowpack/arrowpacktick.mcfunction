#切换
execute as @s[scores={sneak_check=1..}] run function pld:system/arrowpack/arrowpack_auto_switch
#放箭、取箭
execute unless score @s sneak_check matches 1.. run function pld:system/arrowpack/arrowpackmain


#因为在此结算，所以不再检查剩余
scoreboard players set @s right_click_check 0