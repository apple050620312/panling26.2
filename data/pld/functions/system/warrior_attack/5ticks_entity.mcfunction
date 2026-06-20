
#眩晕冷却以及结束
execute if score @s vertigo_5ticks matches 0.. run scoreboard players remove @s vertigo_5ticks 1
execute if score @s vertigo_5ticks matches 0 run data merge entity @s {NoAI:0b}
#眩晕粒子特效
execute if score @s vertigo_5ticks matches 0.. at @s run particle crit ~ ~2.5 ~ 0.1 0.1 0.1 0 10 force
#解救被错误眩晕的小史莱姆、小岩浆怪
execute as @s[type=slime,tag=monster] unless score @s vertigo_5ticks matches 1.. run data merge entity @s {NoAI:0b}
execute as @s[type=magma_cube,tag=monster] unless score @s vertigo_5ticks matches 1.. run data merge entity @s {NoAI:0b}

#状态
    #粒子效果 流血
execute as @s[scores={blooded=1}] at @s run particle falling_lava ~ ~1 ~ 0.3 0.3 0.3 0 10 force
#怪物流血
execute as @s[scores={blooded=1},tag=monster] run function pld:system/warrior_attack/weapon_skills/axe4/blooding/check
execute as @s[type=marker,tag=blood_marker] run function pld:system/warrior_attack/weapon_skills/axe4/if_no_owner

#武器技-sword5
execute as @s[type=armor_stand,scores={weapon_skill_sword5_as_5ticks=0..}] run scoreboard players remove @s weapon_skill_sword5_as_5ticks 1
execute as @s[type=armor_stand,scores={weapon_skill_sword5_next_5ticks=0..}] run scoreboard players remove @s weapon_skill_sword5_next_5ticks 1
execute as @s[type=armor_stand,scores={weapon_skill_sword5_as_5ticks=-1}] run kill @s
    #幻剑粒子效果
execute as @s[type=armor_stand,tag=sword5_skill] at @s run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 5 force
    #幻剑行为-减速附近目标&为附近没有生命恢复的玩家提供生命恢复
execute as @s[type=armor_stand,tag=sword5_skill] at @s run function pld:system/warrior_attack/weapon_skills/sword5/buff

    #幻剑行为-攻击附近目标
execute as @s[type=armor_stand,tag=sword5_skill,scores={weapon_skill_sword5_next_5ticks=0}] at @s run function pld:system/warrior_attack/weapon_skills/sword5/sword_attack
    #幻剑行为-粒子效果
execute as @s[type=armor_stand,tag=sword5_skill_tag,nbt={OnGround:1b}] at @s run function pld:system/warrior_attack/weapon_skills/sword5/onground_func
    #幻剑行为-落地效果
execute as @s[type=armor_stand,tag=sword5_skill,tag=not_onground,nbt={OnGround:1b}] at @s run function pld:system/warrior_attack/weapon_skills/sword5/main_sword_onground


