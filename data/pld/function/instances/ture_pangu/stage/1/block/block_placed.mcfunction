#放置成功 加数
scoreboard players add #system block_placed_metal 1
#检查是否放到了顶端
function pld:instances/ture_pangu/stage/1/block/check_block
#同步bossbar
execute store result bossbar pl:final_battle_base_metal value run scoreboard players get #system block_placed_metal
#检查增幅方块是否达到了目标数量
execute if score #system block_placed_metal = #system block_placed_need run function pld:instances/ture_pangu/stage/1/p1_success

#重置进度
advancement revoke @s only pld:system/final_battle/place_block_metal