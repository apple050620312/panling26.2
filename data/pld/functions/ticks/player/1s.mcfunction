#功勋头效果
execute if entity @s[tag=honor_enchant2_b] run effect give @s regeneration 2 1
execute if entity @s[tag=honor_enchant2_c] run effect give @s regeneration 1 2

#镇妖塔倒计时
execute if score @s instance3_tick matches 0.. if score @s instance3_floor matches 2..9 run function pld:instances/instance3/down_count
#朱雀倒计时
execute if score @s birdtime matches 0.. as @s[x=2471,y=33,z=38,distance=..19] run function pld:system/altars/bird/down_count
#女娲火试炼倒计时
execute if score @s test_firetick matches 1.. as @s[x=1764,y=26,z=-168,distance=..20] run function pld:test/ren/fire/down_count
#蚩尤体试炼倒计时
execute if score @s test_bodytick matches 1.. as @s[x=2930,y=27,z=-197,distance=..20] run function pld:test/zhan/body/down_count

#buff-背负真相
execute if score @s race matches 0 if score @s finish_shen_hide matches 1 run effect give @s unluck 20 0 false
execute if score @s race matches 1 if score @s finish_yao_hide matches 1 run effect give @s unluck 20 0 false
execute if score @s race matches 2 if score @s finish_xian_hide matches 1 run effect give @s unluck 20 0 false
execute if score @s race matches 3 if score @s finish_zhan_hide matches 1 run effect give @s unluck 20 0 false
execute if score @s race matches 4 if score @s finish_ren_hide matches 1 run effect give @s unluck 20 0 false

#种族庇佑s
execute if score @s race matches 0 if score @s raceeffect matches 1 unless predicate pld:effect_check/health_boost run effect give @s health_boost infinite 2 false
execute if score @s race matches 1 if score @s raceeffect matches 1 run effect give @s speed 20 0 false
execute if score @s race matches 2 if score @s raceeffect matches 1 unless score @s parkour_middle_in matches 1 run effect give @s jump_boost 20 1 false
execute if score @s race matches 3 if score @s raceeffect matches 1 run effect give @s fire_resistance 20 0 false
execute if score @s race matches 4 if score @s raceeffect matches 1 run effect give @s resistance 20 0 false

#试炼祝福s
execute if score @s test_bless_act matches 0 if score @s raceeffect matches 1 if score @s race matches 1..4 unless predicate pld:effect_check/health_boost run effect give @s health_boost 1000000 2 false
execute if score @s test_bless_act matches 0 if score @s raceeffect matches 1 if score @s race matches 0 run effect give @s resistance 20 0 false
execute if score @s test_bless_act matches 3 if score @s raceeffect matches 1 run effect give @s strength 20 0 false
execute if score @s test_bless_act matches 4 if score @s raceeffect matches 1 if score @s race matches 0..3 run effect give @s resistance 20 0 false
execute if score @s test_bless_act matches 4 if score @s raceeffect matches 1 if score @s race matches 4 unless predicate pld:effect_check/health_boost run effect give @s health_boost 1000000 2 false

#羽毛
function pld:system/feather/1s_player

#玩家-清除金血降为0时的伤害吸收效果
effect clear @s[nbt={AbsorptionAmount:0f}] absorption

#玩家丢失属性补充
execute unless score @s inpvp matches 1 run function pld:system/attribute/tick

#清理物品、以及旧物品
execute as @s[scores={job=0..1}] unless score @s inpvp matches 1 run clear @s splash_potion

#盾牌相关
function pld:system/shield_1s_player

#任务提示模块（NPC头顶绿色粒子效果）
execute if score @s race matches 0 as @s[advancements={pld:mission/shen/main/finished=false}] run function pld:system/mission_guide/main/main_shen
execute if score @s race matches 1 as @s[advancements={pld:mission/yao/main/finished=false}] run function pld:system/mission_guide/main/main_yao
execute if score @s race matches 2 as @s[advancements={pld:mission/xian/main/finished=false}] run function pld:system/mission_guide/main/main_xian
execute if score @s race matches 3 as @s[advancements={pld:mission/zhan/main/finished=false}] run function pld:system/mission_guide/main/main_zhan
execute if score @s race matches 4 as @s[advancements={pld:mission/ren/main/finished=false}] run function pld:system/mission_guide/main/main_ren

execute as @s[advancements={pld:system/mission_guide_new=false}] run function pld:system/mission_guide/new

#玩家进度：进入圣山
execute if score @s race matches 0 run advancement grant @s[x=-25,y=47,z=-913,distance=..15,advancements={pld:mission/shen/main/main9=true}] only pld:mission/shen/main/main10
execute if score @s race matches 1 run advancement grant @s[x=-25,y=47,z=-913,distance=..15,advancements={pld:mission/yao/main/main12=true}] only pld:mission/yao/main/main13
execute if score @s race matches 2 run advancement grant @s[x=-25,y=47,z=-913,distance=..15,advancements={pld:mission/xian/main/main10=true}] only pld:mission/xian/main/main11
execute if score @s race matches 3 run advancement grant @s[x=-25,y=47,z=-913,distance=..15,advancements={pld:mission/zhan/main/main11=true}] only pld:mission/zhan/main/main12
execute if score @s race matches 4 run advancement grant @s[x=-25,y=47,z=-913,distance=..15,advancements={pld:mission/ren/main/main10=true}] only pld:mission/ren/main/main11

#部分成就检测
execute if score @s honor matches 500.. run advancement grant @s only pld:pvp/honor_500
execute if score @s honor matches 1000.. run advancement grant @s only pld:pvp/honor_1000
execute if score @s honor matches 2000.. run advancement grant @s only pld:pvp/honor_2000

#部分成就检测
execute if score @s racefriend0 matches 30.. run advancement grant @s only pld:other/friends_30
execute if score @s racefriend1 matches 30.. run advancement grant @s only pld:other/friends_30
execute if score @s racefriend2 matches 30.. run advancement grant @s only pld:other/friends_30
execute if score @s racefriend3 matches 30.. run advancement grant @s only pld:other/friends_30
execute if score @s racefriend4 matches 30.. run advancement grant @s only pld:other/friends_30
execute if score @s racefriend0 matches 30.. if score @s racefriend1 matches 30.. if score @s racefriend2 matches 30.. if score @s racefriend3 matches 30.. if score @s racefriend4 matches 30.. run advancement grant @s only pld:other/friends_30_all


#检测玩家神器
#function pld:system/legend_check

#真盘古
function pld:instances/ture_pangu/1s_player


#更新检修：移除玩家错误触发的进度
execute if score @s job matches 1 if entity @s[advancements={pld:system/weapon_skill/bow6=true}] run advancement revoke @s only pld:system/weapon_skill/bow6
