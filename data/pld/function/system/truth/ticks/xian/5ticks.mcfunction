execute as @s[scores={tick_xian_hide=0..,process_xian_hide=1}] run function pld:system/truth/xian/1/conversation/conver_check
execute as @s[scores={tick_xian_hide=0..,process_xian_hide=3}] run function pld:system/truth/xian/2/conversation/conver_check
execute as @s[scores={tick_xian_hide=0..,process_xian_hide=5}] run function pld:system/truth/xian/3/conversation/conver_check
execute as @s[scores={tick_xian_hide=0..,process_xian_hide=7}] run function pld:system/truth/xian/4/conversation/conver_check
execute as @s[scores={tick_xian_hide=0..,process_xian_hide=9}] run function pld:system/truth/xian/5/conversation/conver_check

scoreboard players remove @s[scores={tick_xian_hide=0..}] tick_xian_hide 1

scoreboard players enable @s trigger_xian_hide
scoreboard players enable @s[scores={process_xian_hide=2}] trigger_xian_hide_item
scoreboard players enable @s[scores={process_xian_hide=8}] trigger_xian_hide_item
