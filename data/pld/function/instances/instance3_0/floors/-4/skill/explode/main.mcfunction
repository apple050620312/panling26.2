#召唤黑白两个傀儡
summon skeleton 2834 31 -839 {Team:"monster",Tags:["panling","undead","monster","in3_monster"],Silent:1b,HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance3_0.skeleton"}',ArmorItems:[{},{},{},{id:"minecraft:end_stone",count:1}],Health:800.0f,DeathLootTable:"pld:instance3/in3_0_white",Attributes:[{Name:"max_health",Base:800d},{Name:"follow_range",Base:30d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:5d},{Name:"knockback_resistance",Base:1d}],CanPickUpLoot:false}
summon wither_skeleton 2834 31 -859 {Team:"monster",Tags:["panling","undead","monster","in3_monster"],Silent:1b,HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance3_0.wither_skeleton"}',ArmorItems:[{},{},{},{id:"minecraft:bedrock",count:1}],Health:800.0f,DeathLootTable:"pld:instance3/in3_0_black",Attributes:[{Name:"max_health",Base:800d},{Name:"follow_range",Base:30d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:5d},{Name:"knockback_resistance",Base:1d}],CanPickUpLoot:false}

#粒子效果
function pld:instances/instance3_0/floors/-4/skill/explode/particle/core_sumon/main

#喊话
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_tip3"} 


#倒计时重置,开始结算读条
scoreboard players set #system in3_skill_ep2_load 0

#修改bossbar名称
bossbar set pld:instance3_0_ep_loading name {"translate": "pl.bossbar.instance3_0.boss4_ep2"}
#修改bossbar最大值
bossbar set pld:instance3_0_ep_loading max 600
