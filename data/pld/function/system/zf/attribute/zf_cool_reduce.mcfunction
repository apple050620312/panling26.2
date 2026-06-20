scoreboard players set @s zf_cool_reduce 0

#===========================累计冷却缩减 百分比缩减===========================#

function #pld:zf/cool_reduce

#上限 #system_limit zf_cool_reduce
execute if score @s zf_cool_reduce >= #system_limit zf_cool_reduce run scoreboard players operation @s zf_cool_reduce = #system_limit zf_cool_reduce
#硬上限：不会超过100%冷却
execute if score @s zf_cool_reduce matches 100 run scoreboard players set @s zf_cool_reduce 100