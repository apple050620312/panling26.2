#距离判据
execute if entity @s[x=172,y=66,z=-158,distance=..5,scores={tick_yao_hide=0}] at @s run function pld:system/truth/yao/3/conversation/conversation_list
execute unless entity @s[x=172,y=66,z=-158,distance=..5] run function pld:system/truth/yao/3/conversation/conver_stop

