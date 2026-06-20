#村落补给倒计时
execute if score @s race matches 0..4 run function pld:system/supply/supplytick

#近战相关计时
execute if score @s job matches 0 run function pld:system/warrior_attack/5ticks_player

#弓箭手相关计时
execute if score @s job matches 1 run function pld:system/archer_damage/weapon_skill/5ticks_player
#箭袋系统-异步
execute if score @s job matches 1 run function pld:system/arrowpack/arrowpack_5ticks_player

#炼丹师相关计时
function pld:system/zf/5ticks_player

#bgm tick
function pld:system/bgm/stopbgm_tick

#玩家上线
execute as @s[scores={player_online=1..}] run function pld:system/online/check

#玩家尾迹
function pld:system/tails/5ticks_players
