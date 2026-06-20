#剧情内容
#tellraw @a {text:"",extra:[{text:"「就算你們打敗了我，也會有第二、第三隻盤古來到這個宇宙......到那時候，你們就不會像現在這麼幸運了......」",color:red}]} 
tellraw @a {"translate":"pl.info.end_story.6"}

#对话延迟
scoreboard players set #system tick_end_story 35
#跳跃对话
scoreboard players add #system conversation_end_story 1