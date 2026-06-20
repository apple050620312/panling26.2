#距离判据
execute if entity @s[x=3337,y=109,z=941,distance=..5,scores={tick_xian_hide=0}] at @s run function pld:system/truth/xian/4/conversation/conversation_list
execute unless entity @s[x=3337,y=109,z=941,distance=..5] run function pld:system/truth/xian/4/conversation/conver_stop

