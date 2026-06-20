#剧情内容
#tellraw @a {text:"",extra:[{text:"「呃啊啊啊......」",color:red},{text:"盤古發出憤怒的咆哮，但是眾人看得出來，那已是強弩之末了......",color:gold}]} 
tellraw @a {"translate":"pl.info.end_story.2"}
playsound pl.instance5_pangu2 ambient @a 1370 155 445 10000 0.2

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1