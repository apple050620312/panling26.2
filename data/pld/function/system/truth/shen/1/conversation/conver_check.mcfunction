#距离判据
execute if entity @s[x=3318,y=115,z=354,distance=..5,scores={tick_shen_hide=0}] at @s run function pld:system/truth/shen/1/conversation/conversation_list
execute unless entity @s[x=3318,y=115,z=354,distance=..5] run function pld:system/truth/shen/1/conversation/conver_stop

