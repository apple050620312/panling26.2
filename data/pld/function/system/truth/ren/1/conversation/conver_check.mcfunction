#距离判据
execute if entity @s[x=1713,y=49,z=159,distance=..5,scores={tick_ren_hide=0}] at @s run function pld:system/truth/ren/1/conversation/conversation_list
execute unless entity @s[x=1713,y=49,z=159,distance=..5] run function pld:system/truth/ren/1/conversation/conver_stop

