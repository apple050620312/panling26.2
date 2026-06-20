#剧情内容
playsound minecraft:pl.final_story.25 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.31"}]
#{text:"",extra:[{text:"◎ 妖族大长老/",§a},{text:"战神蚩尤：",§c},{text:"神族长老你这个混帐，你挑起",§f},{text:"人仙妖三族的内斗",§4},{text:"，原来打得是",§f},{text:"渔翁得利",§6},{text:"的主意！看我不好好收拾你！",§f}]}

#对话延迟
scoreboard players set #system tick_final_story 50
#跳跃对话
scoreboard players add #system conversation_final_story 1
