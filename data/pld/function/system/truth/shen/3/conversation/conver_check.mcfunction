#距离判据
execute if entity @s[x=121,y=49,z=805,distance=..5,scores={tick_shen_hide=0}] at @s run function pld:system/truth/shen/3/conversation/conversation_list
execute unless entity @s[x=121,y=49,z=805,distance=..5] run function pld:system/truth/shen/3/conversation/conver_stop

