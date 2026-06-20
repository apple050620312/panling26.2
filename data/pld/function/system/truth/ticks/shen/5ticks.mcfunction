execute as @s[scores={tick_shen_hide=0..,process_shen_hide=1}] run function pld:system/truth/shen/1/conversation/conver_check
execute as @s[scores={tick_shen_hide=0..,process_shen_hide=3}] run function pld:system/truth/shen/2/conversation/conver_check
execute as @s[scores={tick_shen_hide=0..,process_shen_hide=5}] run function pld:system/truth/shen/3/conversation/conver_check
execute as @s[scores={tick_shen_hide=0..,process_shen_hide=7}] run function pld:system/truth/shen/4/conversation/conver_check

scoreboard players remove @s[scores={tick_shen_hide=0..}] tick_shen_hide 1

scoreboard players enable @s trigger_shen_hide
scoreboard players enable @s[scores={process_shen_hide=6}] trigger_shen_hide_item
