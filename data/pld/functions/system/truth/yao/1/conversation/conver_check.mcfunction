#距离判据
execute if entity @s[x=2656,y=89,z=895,distance=..5,scores={tick_yao_hide=0}] at @s run function pld:system/truth/yao/1/conversation/conversation_list
execute unless entity @s[x=2656,y=89,z=895,distance=..5] run function pld:system/truth/yao/1/conversation/conver_stop

