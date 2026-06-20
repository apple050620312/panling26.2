#距离判据
execute if entity @s[x=-119,y=46,z=139,distance=..5,scores={tick_ren_hide=0}] at @s run function pld:system/truth/ren/3/conversation/conversation_list
execute unless entity @s[x=-119,y=46,z=139,distance=..5] run function pld:system/truth/ren/3/conversation/conver_stop

