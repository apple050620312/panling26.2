#剧情内容
tellraw @a [{"translate":"pl.info.final_story.38"}]
#tellraw @a  {text:"",extra:[{text:"====",§6},{text:"千丝谷-忘尘",§b},{text:"、",§6},{text:"芊无天君",§b},{text:"施展",§6},{text:"秘法",§7,§l},{text:"，",§6},{text:"全体获得生命增幅的状态",§c},{text:"====",§6}]}

#buff-生命值
scoreboard players set #system buff_health_final_story 1
#音效-升级
schedule function pld:instances/ture_pangu/pre_story/sound/sound_level_up1 0.5s


#对话延迟
scoreboard players set #system tick_final_story 15
#跳跃对话
scoreboard players add #system conversation_final_story 1




