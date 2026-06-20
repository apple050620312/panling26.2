execute as @s[scores={tick_yao_hide=0..,process_yao_hide=1}] run function pld:system/truth/yao/1/conversation/conver_check
execute as @s[scores={tick_yao_hide=0..,process_yao_hide=3}] run function pld:system/truth/yao/2/conversation/conver_check
execute as @s[scores={tick_yao_hide=0..,process_yao_hide=5}] run function pld:system/truth/yao/3/conversation/conver_check
execute as @s[scores={tick_yao_hide=0..,process_yao_hide=7}] run function pld:system/truth/yao/4/conversation/conver_check
execute as @s[scores={tick_yao_hide=0..,process_yao_hide=9}] run function pld:system/truth/yao/5/conversation/conver_check

scoreboard players remove @s[scores={tick_yao_hide=0..}] tick_yao_hide 1


scoreboard players enable @s trigger_yao_hide
scoreboard players enable @s[scores={process_yao_hide=8}] trigger_yao_hide_item



