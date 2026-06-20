#真盘前置剧情计时器-异步计时 1=0.2s 0.25s=0.5cb计数
scoreboard objectives add tick_final_story dummy ["真盘前置剧情计时器"]

#真盘前置剧情计数器
scoreboard objectives add conversation_final_story dummy ["真盘前置剧情计数器"]

#真盘后置剧情计时器-异步计时 1=0.2s 0.25s=0.5cb计数
scoreboard objectives add tick_end_story dummy ["真盘后置剧情计时器"]

#真盘后置剧情计数器
scoreboard objectives add conversation_end_story dummy ["真盘后置剧情计数器"]
#真盘后,清理道具标记
scoreboard objectives add after_final_story_clear_items dummy ["真盘后清理道具标记"]


#真盘-buff记分板
scoreboard objectives add buff_health_final_story dummy ["真盘buff记分板-生命"]
scoreboard objectives add buff_jump_final_story dummy ["真盘buff记分板-跳跃"]
scoreboard objectives add buff_speed_final_story dummy ["真盘buff记分板-速度"]
scoreboard objectives add buff_resis_final_story dummy ["真盘buff记分板-抗性"]

#真盘-玩家进战状态
scoreboard objectives add in_final_battle dummy ["真盘-玩家进战状态"]

#真盘-阶段 1金2木3水4火5土
scoreboard objectives add final_battle_stage dummy ["真盘-战场标记"]

#真盘-小阵小阶段 未赋值-pre 1-phase1 2-phase2 3-已完成
scoreboard objectives add final_battle_phase dummy ["真盘-小阵阶段"]

#回音玉相关记分板
#读条
scoreboard objectives add back_stone_tick dummy ["真盘-回音玉读条"]

#阵法方块相关记分板
scoreboard objectives add block_count dummy ["真盘-玩家背包内阵法增幅块数量统计"]
#scoreboard objectives add core_count dummy ["真盘-阵法核心数量统计"]

scoreboard objectives add block_placed_metal dummy ["真盘-阵法核心已放置数量-金"]
scoreboard objectives add block_placed_wood dummy ["真盘-阵法核心已放置数量-木"]
scoreboard objectives add block_placed_water dummy ["真盘-阵法核心已放置数量-水"]
scoreboard objectives add block_placed_fire dummy ["真盘-阵法核心已放置数量-火"]
scoreboard objectives add block_placed_earth dummy ["真盘-阵法核心已放置数量-土"]

scoreboard objectives add block_placed_need dummy ["真盘-阵法核心需求放置数量"]
scoreboard players set #system block_placed_need 10

#护送流程记分板
scoreboard objectives add npc_metal dummy ["真盘-护送流程-金"]
scoreboard objectives add npc_wood dummy ["真盘-护送流程-木"]
scoreboard objectives add npc_water dummy ["真盘-护送流程-水"]
scoreboard objectives add npc_fire dummy ["真盘-护送流程-火"]
scoreboard objectives add npc_earth dummy ["真盘-护送流程-土"]

#npc生命值记分板
scoreboard objectives add npc_health dummy ["真盘-npc当前生命值"]
scoreboard objectives add npc_max_health dummy ["真盘-npc最大生命值"]
scoreboard players set #system npc_max_health 200

#随机用记分板
scoreboard objectives add final_battle_random1 dummy ["真盘-随机第一位"]
scoreboard objectives add final_battle_random2 dummy ["真盘-随机第二位"]
scoreboard objectives add final_battle_random3 dummy ["真盘-随机第三位"]

#真盘-关闭bgm标记
scoreboard objectives add final_battle_stopbgm dummy ["真盘-关闭bgm标记"]


#相关bossbar
#万神灭神大阵-部署进度
bossbar add pl:final_battle {"translate": "pl.bossbar.name.final_battle"}
bossbar set pl:final_battle color white
bossbar set pl:final_battle max 5
#金阵阵法-基础部署进度
bossbar add pl:final_battle_base_metal {"translate": "pl.bossbar.name.final_battle.metal.base"}
bossbar set pl:final_battle_base_metal color yellow
execute store result bossbar pl:final_battle_base_metal max run scoreboard players get #system block_placed_need
#金阵阵法-死士护送进度
bossbar add pl:final_battle_npc_metal {"translate": "pl.bossbar.name.final_battle.metal.npc"}
bossbar set pl:final_battle_npc_metal color yellow
bossbar set pl:final_battle_npc_metal max 26


#木阵阵法-基础部署进度
bossbar add pl:final_battle_base_wood {"translate": "pl.bossbar.name.final_battle.wood.base"}
bossbar set pl:final_battle_base_wood color green
execute store result bossbar pl:final_battle_base_wood max run scoreboard players get #system block_placed_need
#木阵阵法-死士护送进度
bossbar add pl:final_battle_npc_wood {"translate": "pl.bossbar.name.final_battle.wood.npc"}
bossbar set pl:final_battle_npc_wood color green
bossbar set pl:final_battle_npc_wood max 44

#水阵阵法-基础部署进度
bossbar add pl:final_battle_base_water {"translate": "pl.bossbar.name.final_battle.water.base"}
bossbar set pl:final_battle_base_water color blue
execute store result bossbar pl:final_battle_base_water max run scoreboard players get #system block_placed_need
#水阵阵法-死士护送进度
bossbar add pl:final_battle_npc_water {"translate": "pl.bossbar.name.final_battle.water.npc"}
bossbar set pl:final_battle_npc_water color blue
bossbar set pl:final_battle_npc_water max 38

#火阵阵法-基础部署进度
bossbar add pl:final_battle_base_fire {"translate": "pl.bossbar.name.final_battle.fire.base"}
bossbar set pl:final_battle_base_fire color red
execute store result bossbar pl:final_battle_base_fire max run scoreboard players get #system block_placed_need
#火阵阵法-死士护送进度
bossbar add pl:final_battle_npc_fire {"translate": "pl.bossbar.name.final_battle.fire.npc"}
bossbar set pl:final_battle_npc_fire color red
bossbar set pl:final_battle_npc_fire max 57

#土阵阵法-基础部署进度
bossbar add pl:final_battle_base_earth {"translate": "pl.bossbar.name.final_battle.earth.base"}
bossbar set pl:final_battle_base_earth color purple
execute store result bossbar pl:final_battle_base_earth max run scoreboard players get #system block_placed_need
#土阵阵法-基础部署进度
bossbar add pl:final_battle_npc_earth {"translate": "pl.bossbar.name.final_battle.earth.npc"}
bossbar set pl:final_battle_npc_earth color purple
bossbar set pl:final_battle_npc_earth max 37


