tellraw @s[scores={turtle_incheck=1}] {"translate":"pl.info.turtle_incheckagain"}
execute store success score @s success if block -341 18 -694 minecraft:hopper{Items:[{slot:2,id:"minecraft:emerald",count:10,components:{custom_data:{id:"panling:metal"}}}]} if block -343 18 -696 minecraft:hopper{Items:[{slot:2,id:"minecraft:bone",count:10,components:{custom_data:{id:"panling:wood"}}}]} if block -342 18 -698 minecraft:hopper{Items:[{slot:2,id:"minecraft:string",count:10,components:{custom_data:{id:"panling:water"}}}]} if block -340 18 -699 minecraft:hopper{Items:[{slot:2,id:"minecraft:blaze_rod",count:10,components:{custom_data:{id:"panling:fire"}}}]} if block -338 18 -697 minecraft:hopper{Items:[{slot:2,id:"minecraft:magma_cream",count:10,components:{custom_data:{id:"panling:earth"}}}]} run scoreboard players set @s turtle_incheck 1
execute as @s[scores={turtle_incheck=1,success=1}] run data merge block -341 18 -694 {Items:[]}
execute as @s[scores={turtle_incheck=1,success=1}] run data merge block -343 18 -696 {Items:[]}
execute as @s[scores={turtle_incheck=1,success=1}] run data merge block -342 18 -698 {Items:[]}
execute as @s[scores={turtle_incheck=1,success=1}] run data merge block -340 18 -699 {Items:[]}
execute as @s[scores={turtle_incheck=1,success=1}] run data merge block -338 18 -697 {Items:[]}
tellraw @s[scores={turtle_incheck=1,success=1}] {"translate":"pl.info.turtle_incheck"}
scoreboard players reset @s[scores={turtle_incheck=1,success=1}] success
