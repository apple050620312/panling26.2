#距离判据 2742 53 867
execute if entity @s[x=2742,y=53,z=867,distance=..5,scores={tick_shen_hide=0}] at @s run function pld:system/truth/shen/2/conversation/conversation_list
execute unless entity @s[x=2742,y=53,z=867,distance=..5] run function pld:system/truth/shen/2/conversation/conver_stop

