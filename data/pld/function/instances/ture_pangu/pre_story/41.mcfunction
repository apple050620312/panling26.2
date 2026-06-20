#剧情内容
tellraw @a [{"translate":"pl.info.final_story.41"}]
#tellraw @a  {text:"",extra:[{text:"====",§6},{text:"蓬莱岛主梓决",§d},{text:"、",§6},{text:"仙族雨竹",§d},{text:"施展",§6},{text:"翔天之术",color:dark_purple,§l},{text:"，",§6},{text:"全体获得跳跃提昇",§b},{text:"====",§6}]}

#buff-jump
scoreboard players set #system buff_jump_final_story 1
#音效-升级
schedule function pld:instances/ture_pangu/pre_story/sound/sound_level_up1 0.5s

#对话延迟
scoreboard players set #system tick_final_story 15
#跳跃对话
scoreboard players add #system conversation_final_story 1

#Todo
#scoreboard players set #system Fpangu_tpangu -1