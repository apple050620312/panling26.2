#距离判据
execute if entity @s[x=336,y=16,z=-716,distance=..5,scores={tick_yao_hide=0}] at @s run function pld:system/truth/yao/5/conversation/conversation_list
execute unless entity @s[x=336,y=16,z=-716,distance=..5] run function pld:system/truth/yao/5/conversation/conver_stop
