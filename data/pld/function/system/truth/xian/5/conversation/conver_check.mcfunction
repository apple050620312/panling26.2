#距离判据
execute if entity @s[x=-335,y=97,z=-446,distance=..5,scores={tick_xian_hide=0}] at @s run function pld:system/truth/xian/5/conversation/conversation_list
execute unless entity @s[x=-335,y=97,z=-446,distance=..5] run function pld:system/truth/xian/5/conversation/conver_stop

