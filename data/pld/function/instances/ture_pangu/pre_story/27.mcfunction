#剧情内容
playsound minecraft:pl.final_story.21 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.27"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族-现任盟主：",§d},{text:"各位，我已经启用了",§f},{text:"最新的阵法",§b},{text:"，请所有人在安全的地方",§f},{text:"别乱动",§c},{text:"，等我锁定好座标，将会",§f},{text:"传送",§d},{text:"各位到",§f},{text:"临时的战备基地",§6},{text:"。",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 60
#跳跃对话
scoreboard players add #system conversation_final_story 1
