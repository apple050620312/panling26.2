#剧情内容
#tellraw @a {text:"",extra:[{text:"芊無有些感慨的說道：",color:aqua},{text:"「我想，神族不會再是永生不滅的存在了。我們最終也會和萬物一樣，歸於塵埃。」",color:white}]}
tellraw @a {"translate":"pl.info.end_story.21"}

#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1