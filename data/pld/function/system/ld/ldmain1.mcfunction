clone ~ ~ ~ ~ ~ ~ ~ ~7 ~ replace
tag @p add ld_tag
#获取炉子内东西数量
scoreboard players set @p[tag=ld_tag] ld_count 0
execute store result score @p[tag=ld_tag] ld_count run data get block ~ ~ ~ Items



function #pld:ld_recipes



execute unless blocks ~ ~ ~ ~ ~ ~ ~ ~7 ~ all run scoreboard players set @p[tag=ld_tag] ldsuccess 1
setblock ~ ~7 ~ air
tag @p[tag=ld_tag] remove ld_tag

#为附近玩家提供进度以及进度检查
advancement grant @p[scores={ldsuccess=1}] only pld:experience/job/2/ld
execute as @p[scores={ldsuccess=1}] run function pld:system/ld/adv

#金 emerald     panling:metal
#木 bone        panling:wood
#水 string      panling:water
#火 blaze_rod   panling:fire
#土 magma_cream panling:earth