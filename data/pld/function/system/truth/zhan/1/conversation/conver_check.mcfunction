#距离判据
execute if entity @s[x=3264,y=20,z=-148,distance=..5,scores={tick_zhan_hide=0}] at @s run function pld:system/truth/zhan/1/conversation/conversation_list
execute unless entity @s[x=3264,y=20,z=-148,distance=..5] run function pld:system/truth/zhan/1/conversation/conver_stop

