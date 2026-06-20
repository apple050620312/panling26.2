#放置成功 加数
scoreboard players add #system block_placed_earth 1
#检查是否放到了顶端
function pld:instances/ture_pangu/stage/5/block/check_blcok
#同步bossbar
execute store result bossbar pl:final_battle_base_earth value run scoreboard players get #system block_placed_earth
#检查增幅方块是否达到了目标数量
execute if score #system block_placed_earth = #system block_placed_need run function pld:instances/ture_pangu/stage/5/p1_success

advancement revoke @s only pld:system/final_battle/place_block_earth