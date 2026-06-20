#剧情内容
playsound minecraft:pl.final_story.27 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.34"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族-陈大夫神农氏：",§b},{text:"哼，正好",§f},{text:"新仇旧恨",§4},{text:"一次讨回来。",§f},{text:"丹药的补给",§6},{text:"就交给我们吧，保证没有人可以",§f},{text:"带着伤回去",§c},{text:"。还有，这是",§f},{text:"女娲最後的意志",§e},{text:"，大家可不能负了她的努力啊。",§f}]}

#对话延迟
scoreboard players set #system tick_final_story 70
#跳跃对话
scoreboard players add #system conversation_final_story 1


