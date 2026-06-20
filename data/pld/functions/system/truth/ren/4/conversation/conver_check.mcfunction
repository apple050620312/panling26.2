#距离判据
execute if entity @s[x=-112,y=33,z=133,distance=..5,scores={tick_ren_hide=0}] at @s run function pld:system/truth/ren/4/conversation/conversation_list
execute unless entity @s[x=-112,y=33,z=133,distance=..5] run function pld:system/truth/ren/4/conversation/conver_stop

