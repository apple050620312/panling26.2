#剧情内容
particle cloud 1370 155.5 445 1 1 1 0.08 500 force
particle lava 1370 155.5 445 1 1 1 0 100 force
playsound entity.wither.spawn ambient @a 1370 155 445 10000
kill @e[x=1370,y=155,z=445,type=armor_stand,distance=..3] 

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1