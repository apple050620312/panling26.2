#输入 @s zf_consume_reduce 阵法不消耗率
#输出 @s ldl6success 1消耗 0不消耗
scoreboard players set @s ldl6success 0

setblock ~ 255 ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
item modify block ~ 255 ~ container.0 pld:100random
execute store result score #temp temp run data get block ~ 255 ~ Items[0].tag.AttributeModifiers[0].Amount 1
setblock ~ 255 ~ air
#temp temp 大于 zf_consume_reduce 则阵法正常消耗
execute if score #temp temp >= @s zf_consume_reduce run scoreboard players set @s ldl6success 1

tellraw @s[scores={zfsuccess=1,ldl6success=0}] {"translate":"pl.info.zf_no_consume"}


