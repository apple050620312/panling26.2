#距离判据
execute if entity @s[x=3180,y=95,z=889,distance=..5,scores={tick_xian_hide=0}] at @s run function pld:system/truth/xian/1/conversation/conversation_list
execute unless entity @s[x=3180,y=95,z=889,distance=..5] run function pld:system/truth/xian/1/conversation/conver_stop

