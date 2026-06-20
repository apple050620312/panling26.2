#剧情内容
#tellraw @a {text:"",extra:[{text:"「呼...呼......呵呵呵......你們以為打敗了我，事情就結束了嗎......」",color:red}]}
tellraw @a {"translate":"pl.info.end_story.3"}

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1