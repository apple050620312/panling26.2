#效果-在脚下生成一柄幻剑
execute at @s run summon armor_stand ~ ~1 ~ {Tags: ["entity_tick","weapon_skill_tag","not_onground"], Invulnerable:1b,ShowArms:1b,DisabledSlots: 4144896,Pose:{LeftArm: [0.0f, 0.0f, 0.0f]}, Invisible: 1b, Small: 0b, Rotation: [-180.0f, 0.0f], HandItems: [{}, {id: "minecraft:diamond_sword", Count: 1b, components:{custom_model_data:1,"minecraft:custom_data":{ Damage: 0}}}], ArmorItems: [{}, {}, {}, {}], NoBasePlate: 1b}

#获取玩家血量的50%
execute store result score #temp temp run attribute @s max_health get 30
scoreboard players operation #temp temp2 = @s player_uid

#为幻剑赋予基础屬性
execute as @e[type=armor_stand,tag=weapon_skill_tag] run function pld:system/warrior_attack/weapon_skills/sword5/sword_init


#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
playsound minecraft:block.amethyst_block.chime ambient @s ~ ~ ~ 50
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_sword5"}
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_sword5"}

#进入cd 15s 
scoreboard players set @s weapon_skill_cool_5ticks 75
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @s skill_success 1