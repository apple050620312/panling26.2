scoreboard players set @s zf_consume_reduce 0

#===========================不消耗率 百分比提升===========================#

function #pld:zf/consume_reduce


#上限 #system_limit zf_consume_reduce
execute if score @s zf_consume_reduce >= #system_limit zf_consume_reduce run scoreboard players operation @s zf_consume_reduce = #system_limit zf_consume_reduce
#硬上限：不会超过100% 不消耗
execute if score @s zf_consume_reduce matches 100 run scoreboard players set @s zf_consume_reduce 100

