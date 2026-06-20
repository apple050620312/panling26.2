#包子10个
give @s minecraft:bread{display:{Name:'{"translate":"pl.item.name.baozi"}'},id:"panling:baozi"} 10
#铜钱15枚
give @s minecraft:gold_nugget{display:{Name:'{"translate":"pl.item.name.copper"}'},id:"panling:copper_cash"} 15
#鹤顶丹
give @s minecraft:potion{id:"panling:killpotion",CustomPotionColor:4393481,CustomPotionEffects:[{Id:7b,Amplifier:19b,Duration:20}],display:{Lore:['{"translate":"pl.item.lore.killpotiona"}','{"translate":"pl.item.lore.killpotionb"}'],Name:'{"translate":"pl.item.name.killpotion"}'}}
#NPC对话泡泡
give @s minecraft:pink_dye{display:{Lore:['{"translate":"pl.item.lore.npcbubblea"}','{"translate":"pl.item.lore.npcbubbleb"}'],Name:'{"translate":"pl.item.name.npcbubble"}'},id:"panling:NPC_bubble"} 3
#盘古大陆通则【修订版】
give @s minecraft:written_book{title:"§6盘古大陆通则【修订版】",author:"§6天道",pages:['{"translate":"pl.book.t0.page1"}','{"translate":"pl.book.t0.page2"}','{"translate":"pl.book.t0.page3"}','{"translate":"pl.book.t0.page4"}','{"translate":"pl.book.t0.page5"}','{"translate":"pl.book.t0.page6"}']}
#属性介绍书
give @s minecraft:written_book{title:"§6扩展包新增属性介绍",author:"§6天道",pages:['{"translate":"pl.book.t1.page1"}','{"translate":"pl.book.t1.page2"}','{"translate":"pl.book.t1.page3"}']}
#菜单书
function pld:system/menubook/update/main

advancement grant @s only pld:experience/root
advancement grant @s only pld:exploration/root
advancement grant @s only pld:exploration/race
advancement grant @s only pld:experience/job/root
advancement grant @s only pld:other/root
advancement grant @s[scores={job=0}] only pld:experience/job/0/base
advancement grant @s[scores={job=1}] only pld:experience/job/1/base
advancement grant @s[scores={job=2}] only pld:experience/job/2/base

#战士特供道具 额外五个包子
give @s[scores={job=0}] minecraft:bread{display:{Name:'{"translate":"pl.item.name.baozi"}'},id:"panling:baozi"} 5

#弓箭手特供道具 一组箭
give @s[scores={job=1}] minecraft:arrow 64

#炼丹师特供道具 初级药引一枚、木元素五枚、金元素五枚
give @s[scores={job=2}] minecraft:poisonous_potato{display:{Lore:['{"translate":"pl.item.lore.yy"}'],Name:'{"translate":"pl.item.name.yy1"}'},id:"panling:yy1"}
give @s[scores={job=2}] minecraft:bone{id:"panling:wood",display:{Name:'{"translate":"pl.item.name.wood"}'}} 5
give @s[scores={job=2}] minecraft:emerald{id:"panling:metal",display:{Name:'{"translate":"pl.item.name.metal"}'}} 5

#清除等级奖励
function pld:system/rechoose/lvl_reset

#清除状态效果
effect clear @s
#重置重生点
spawnpoint @s 205 54 -1771
#回血
effect give @s minecraft:instant_health 1 100
#回饥饿
effect give @s minecraft:saturation 1 127
#信息
tellraw @s {"translate":"pl.info.intopangu"}
#title时间设置
title @s times 15 80 20
#庇佑标记
scoreboard players set @s raceeffect 1
#圣兽标记
scoreboard players set @s dragon 0
scoreboard players set @s bird 0
scoreboard players set @s tiger 0
scoreboard players set @s turtle 0
scoreboard players set @s turtle_incheck 0

#试炼标记
scoreboard players set @s test_reward_act -1

scoreboard players set @s ren_test_earth 0
scoreboard players set @s ren_test_fire 0
scoreboard players set @s ren_test_metal 0
scoreboard players set @s ren_test_water 0
scoreboard players set @s ren_test_wood 0
scoreboard players set @s ren_test_all 0

scoreboard players set @s shen_test_mont 0
scoreboard players set @s shen_test_sun 0
scoreboard players set @s shen_test_forest 0
scoreboard players set @s shen_test_star 0
scoreboard players set @s shen_test_sea 0
scoreboard players set @s shen_test_all 0

scoreboard players set @s zhan_test_heart 0
scoreboard players set @s zhan_test_power 0
scoreboard players set @s zhan_test_body 0
scoreboard players set @s zhan_test_skill 0
scoreboard players set @s zhan_test_speed 0
scoreboard players set @s zhan_test_all 0

scoreboard players set @s test_bless_act -1
scoreboard players set @s test_cool -1

#重生点标记
scoreboard players set @s spwanpoint 8
#给予支线任务属性奖励
attribute @s[scores={race=0,ex_shen=1}] minecraft:generic.max_health modifier add 0-0-0-2-0 "神族支线奖励-生命" 2 add 
attribute @s[scores={race=0,ex_shen=1}] minecraft:generic.armor_toughness modifier add 0-0-0-2-0 "神族支线奖励-韧性" 1 add
attribute @s[scores={race=1,ex_yao=1}] minecraft:generic.max_health modifier add 0-0-0-2-1 "妖族支线奖励-生命" 2 add 
attribute @s[scores={race=1,ex_yao=1}] minecraft:generic.movement_speed modifier add 0-0-0-2-1 "妖族支线奖励-速度" 0.05 multiply_base
attribute @s[scores={race=2,ex_xian=1}] minecraft:generic.max_health modifier add 0-0-0-2-2 "仙族支线奖励-生命" 2 add 
attribute @s[scores={race=2,ex_xian=1}] minecraft:generic.knockback_resistance modifier add 0-0-0-2-2 "仙族支线奖励-抗性" 0.2 add
attribute @s[scores={race=3,ex_zhan=1}] minecraft:generic.armor modifier add 0-0-0-2-3 "战神族支线奖励-护甲" 2 add 
attribute @s[scores={race=3,ex_zhan=1}] minecraft:generic.attack_damage modifier add 0-0-0-2-3 "战神族支线奖励-近战攻击" 1 add
attribute @s[scores={race=4,ex_ren=1}] minecraft:generic.max_health modifier add 0-0-0-2-4 "人族支线奖励-生命" 2 add 
attribute @s[scores={race=4,ex_ren=1}] minecraft:generic.armor_toughness modifier add 0-0-0-2-4 "人族支线奖励-韧性" 1 add
#设置补给时间
scoreboard players set @s supply5ticks 36000


#设置激活位置（默认为主快捷栏第一位）
execute as @s[scores={job=0..1}] run trigger SlotSet set 1

#设置大陆标记
scoreboard players set @s feather_mainland 1
#清楚羽毛领取标记
advancement revoke @s only pld:mission/ren/main/feather
advancement revoke @s only pld:mission/shen/main/feather
advancement revoke @s only pld:mission/xian/main/feather
advancement revoke @s only pld:mission/yao/main/feather
advancement revoke @s only pld:mission/zhan/main/feather

#清空领取重华晶
advancement revoke @s only pld:mission/ren/main/tpstone
advancement revoke @s only pld:mission/shen/main/tpstone
advancement revoke @s only pld:mission/xian/main/tpstone
advancement revoke @s only pld:mission/yao/main/tpstone
advancement revoke @s only pld:mission/zhan/main/tpstone

#清空到达标记
scoreboard players set @s tp_east1 0
scoreboard players set @s tp_east2 0
scoreboard players set @s tp_east3 0
scoreboard players set @s dragon_check 0

scoreboard players set @s tp_west1 0
scoreboard players set @s tp_west2 0
scoreboard players set @s tp_west3 0
scoreboard players set @s tiger_check 0

scoreboard players set @s tp_north1 0
scoreboard players set @s tp_north2 0
scoreboard players set @s tp_north3 0
scoreboard players set @s turtle_check 0

scoreboard players set @s tp_south1 0
scoreboard players set @s tp_south2 0
scoreboard players set @s tp_south3 0
scoreboard players set @s bird_check 0

scoreboard players set @s tp_tick -1
scoreboard players set @s tp_cool_tick -1

tag @s remove is_selecting 
tag @s add finish_select

function #pld:selectons/intopanguall