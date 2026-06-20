#距离判据
execute if entity @s[x=3241,y=67,z=881,distance=..5,scores={tick_xian_hide=0}] at @s run function pld:system/truth/xian/2/conversation/conversation_list
execute unless entity @s[x=3241,y=67,z=881,distance=..5] run function pld:system/truth/xian/2/conversation/conver_stop

