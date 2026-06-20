#距离判据
execute if entity @s[x=3259,y=115,z=375,distance=..5,scores={tick_zhan_hide=0}] at @s run function pld:system/truth/zhan/2/conversation/conversation_list
execute unless entity @s[x=3259,y=115,z=375,distance=..5] run function pld:system/truth/zhan/2/conversation/conver_stop

