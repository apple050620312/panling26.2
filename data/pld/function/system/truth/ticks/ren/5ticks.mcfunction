execute as @s[scores={tick_ren_hide=0..,process_ren_hide=1}] run function pld:system/truth/ren/1/conversation/conver_check
execute as @s[scores={tick_ren_hide=0..,process_ren_hide=3}] run function pld:system/truth/ren/2/conversation/conver_check
execute as @s[scores={tick_ren_hide=0..,process_ren_hide=5}] run function pld:system/truth/ren/3/conversation/conver_check
execute as @s[scores={tick_ren_hide=0..,process_ren_hide=7}] run function pld:system/truth/ren/4/conversation/conver_check


scoreboard players remove @s[scores={tick_ren_hide=0..}] tick_ren_hide 1

scoreboard players enable @s trigger_ren_hide
scoreboard players enable @s[scores={process_ren_hide=6}] trigger_ren_hide_item

