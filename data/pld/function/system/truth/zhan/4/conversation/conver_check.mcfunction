#距离判据
execute if entity @s[x=-678,y=139,z=346,distance=..5,scores={tick_zhan_hide=0}] at @s run function pld:system/truth/zhan/4/conversation/conversation_list
execute unless entity @s[x=-678,y=139,z=346,distance=..5] run function pld:system/truth/zhan/4/conversation/conver_stop

