#剧情内容
#tellraw @a {text:"",extra:[{selector:"@r[score_racemission4_min=1]",color:yellow},{text:" 和 ",color:gold},{selector:"@r[score_racemission1_min=1]",color:yellow},{text:"等人也參與了說服各勢力停止爭戰的工作。",color:gold}]}
tellraw @a [{"selector":"@r[scores={race=4,finish_ren_hide=1}]","color":"yellow"},{"translate":"pl.info.end_story.27.a"},{"selector":"@r[scores={race=1,finish_yao_hide=1}]","color":"yellow"},{"translate":"pl.info.end_story.27.b"}]


#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1