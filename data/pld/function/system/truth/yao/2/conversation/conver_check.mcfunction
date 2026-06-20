#距离判据
execute if entity @s[x=253,y=49,z=26,distance=..5,scores={tick_yao_hide=0}] at @s run function pld:system/truth/yao/2/conversation/conversation_list
execute unless entity @s[x=253,y=49,z=26,distance=..5] run function pld:system/truth/yao/2/conversation/conver_stop

