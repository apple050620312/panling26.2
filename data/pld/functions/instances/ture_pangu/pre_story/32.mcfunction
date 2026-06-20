#剧情内容
tellraw @a [{"translate":"pl.info.final_story.32"}]
#tellraw @a  {text:"",extra:[{text:"====",§6},{text:"叶灵谷主与蚩尤",§a},{text:"施予",§6},{text:"妖精的祝福",§a,§l},{text:"，",§6},{text:"全体移动速度上升",§b},{text:"====",§6}]}

#buff-速度
scoreboard players set #system buff_speed_final_story 1

#音效-升级
schedule function pld:instances/ture_pangu/pre_story/sound/sound_level_up1 0.5s


#对话延迟
scoreboard players set #system tick_final_story 15
#跳跃对话
scoreboard players add #system conversation_final_story 1