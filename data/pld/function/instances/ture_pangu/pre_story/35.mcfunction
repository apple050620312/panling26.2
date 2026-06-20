#剧情内容
tellraw @a [{"translate":"pl.info.final_story.35"}]
#tellraw @a  {text:"",extra:[{text:"====",§6},{text:"神农氏",§b},{text:"使用了",§6},{text:"女娲的遗志",§e,§l},{text:"，",§6},{text:"全体获得额外减伤状态",§b},{text:"====",§6}]}

#buff-抗性
scoreboard players set #system buff_resis_final_story 1

#音效-升级
schedule function pld:instances/ture_pangu/pre_story/sound/sound_level_up1 0.5s


#对话延迟
scoreboard players set #system tick_final_story 15
#跳跃对话
scoreboard players add #system conversation_final_story 1







