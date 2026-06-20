
execute as @s[scores={tick_zhan_hide=0..,process_zhan_hide=1}] run function pld:system/truth/zhan/1/conversation/conver_check
execute as @s[scores={tick_zhan_hide=0..,process_zhan_hide=3}] run function pld:system/truth/zhan/2/conversation/conver_check
execute as @s[scores={tick_zhan_hide=0..,process_zhan_hide=5}] run function pld:system/truth/zhan/3/conversation/conver_check
execute as @s[scores={tick_zhan_hide=0..,process_zhan_hide=7}] run function pld:system/truth/zhan/4/conversation/conver_check


scoreboard players remove @s[scores={tick_zhan_hide=0..}] tick_zhan_hide 1

scoreboard players enable @s trigger_zhan_hide
scoreboard players enable @s[scores={process_zhan_hide=6}] trigger_zhan_hide_item
