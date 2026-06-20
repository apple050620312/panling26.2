#剧情内容
#?
execute as @a at @s run playsound entity.wither.death ambient @s ~ ~ ~ 16
tellraw @a [{"translate":"pl.info.final_story.25"}]
#tellraw @a  {text:"",extra:[{text:"====",§6},{text:"盘古元神",§4,§l},{text:"试图",§6},{text:"毁灭这个宇宙",§c},{text:"，请所有人准备好迎接",§6},{text:"世界的终焉",§c,§l},{text:"====",§6}]}

#对话延迟
scoreboard players set #system tick_final_story 30
#跳跃对话
scoreboard players add #system conversation_final_story 1

