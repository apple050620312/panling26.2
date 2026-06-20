#距离判据
execute if entity @s[x=123,y=32,z=814,distance=..5,scores={tick_shen_hide=0}] at @s run function pld:system/truth/shen/4/conversation/conversation_list
execute unless entity @s[x=123,y=32,z=814,distance=..5] run function pld:system/truth/shen/4/conversation/conver_stop

