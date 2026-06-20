execute if block 161 11 139 hopper{Items:[{tag:{id:"panling:sunday_material"}}]} run tellraw @s {"translate":"pl.info.sunday_reward1"}
execute if block 161 11 139 hopper{Items:[{tag:{id:"panling:sunday_material"}}]} run tellraw @s {"translate":"pl.info.sunday_reward2"}
execute if block 161 11 139 hopper{Items:[{tag:{id:"panling:sunday_material"}}]} at @s as @s run tp @s[scores={ex_sunday=2}] ~ ~35 ~25 -180 ~
execute if block 161 11 139 hopper{Items:[{tag:{id:"panling:sunday_material"}}]} run scoreboard players set @s ex_sunday 3
playsound random.levelup ambient @s[scores={ex_sunday=3}]
advancement grant @s[scores={ex_sunday=3}] only pld:exploration/ex_sunday

data merge block 161 11 139 {Items:[]}