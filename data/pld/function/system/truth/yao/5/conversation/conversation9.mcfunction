#对话内容
tellraw @s {"translate":"pl.info.yao.hide.conversation5_9"}
#音效
function pld:system/truth/conversation_sound
#对话延迟
scoreboard players set @s tick_yao_hide 12
#跳跃对话
scoreboard players add @s conversation_yao_hide 1
