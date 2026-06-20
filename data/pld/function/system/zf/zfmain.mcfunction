#检测炉子
#重置阵法成功判定
scoreboard players set @s zfsuccess 0

#炉子在副手，元素在主手
execute if predicate pld:offhand/furnace3 run scoreboard players set @s zf_hold_ldl 1
execute if predicate pld:offhand/furnace4 run scoreboard players set @s[level=30..] zf_hold_ldl 2
execute if predicate pld:offhand/furnace5 run scoreboard players set @s[level=40..] zf_hold_ldl 3
execute if predicate pld:offhand/furnace6 run scoreboard players set @s[level=50..] zf_hold_ldl 4

#炉子在主手，元素在副手
execute if predicate pld:mainhand/furnace3 run scoreboard players set @s zf_hold_ldl -1
execute if predicate pld:mainhand/furnace4 run scoreboard players set @s[level=30..] zf_hold_ldl -2
execute if predicate pld:mainhand/furnace5 run scoreboard players set @s[level=40..] zf_hold_ldl -3
execute if predicate pld:mainhand/furnace6 run scoreboard players set @s[level=50..] zf_hold_ldl -4

execute if predicate pld:offhand/furnace4 unless entity @s[level=30..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace4"}]
execute if predicate pld:offhand/furnace5 unless entity @s[level=40..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace5"}]
execute if predicate pld:offhand/furnace6 unless entity @s[level=50..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace6"}]
execute if predicate pld:mainhand/furnace4 unless entity @s[level=30..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace4"}]
execute if predicate pld:mainhand/furnace5 unless entity @s[level=40..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace5"}]
execute if predicate pld:mainhand/furnace6 unless entity @s[level=50..] run tellraw @s [{"translate":"pl.info.equip_level_limited"},{"translate":"pl.item.name.furnace6"}]
#scoreboard players set @s[nbt={SelectedItem:{tag:{id:"panling:furnace6",awake:0}}}] weapon6_awake 0
#scoreboard players set @s[nbt={SelectedItem:{tag:{id:"panling:furnace6",awake:1}}}] weapon6_awake 1
#scoreboard players set @s[nbt={SelectedItem:{tag:{id:"panling:furnace6",awake:2}}}] weapon6_awake 2
#scoreboard players set @s[nbt={SelectedItem:{tag:{id:"panling:furnace6",awake:3}}}] weapon6_awake 3
#scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:furnace6",awake:0}}]}] weapon6_awake 0
#scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:furnace6",awake:1}}]}] weapon6_awake 1
#scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:furnace6",awake:2}}]}] weapon6_awake 2
#scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:furnace6",awake:3}}]}] weapon6_awake 3

#接口-空
function #pld:zf/zfmain

#获取武器数据
function pld:system/zf/attribute/weapon/weapon_attribute

#更新玩家阵法强度数据
function pld:system/zf/attribute/zf_str



#更新玩家阵法冷却缩减数据
function pld:system/zf/attribute/zf_cool_reduce

#更新玩家阵法不消耗率
function pld:system/zf/attribute/zf_consume_reduce

#标记施法玩家
tag @s add sfwj
#根据玩家阵法强度划分等级
execute if score @s zf_str matches 9..19 run scoreboard players set @s zf_lvl 1
execute if score @s zf_str matches 20..29 run scoreboard players set @s zf_lvl 2
execute if score @s zf_str matches 30..34 run scoreboard players set @s zf_lvl 3
execute if score @s zf_str matches 35.. run scoreboard players set @s zf_lvl 4

#调用元素子程序
execute if score @s zf_hold_ldl matches 1.. at @s run function pld:system/zf/yuansu_main
execute if score @s zf_hold_ldl matches ..-1 at @s run function pld:system/zf/yuansu_off

#去施法玩家标记
tag @s remove sfwj

#重置阵法成功判定
scoreboard players set @s zfsuccess 0
#清除炉子标记
scoreboard players set @s zf_hold_ldl 0

#重置阵法判定
#因为在此结算，所以不再检查剩余
scoreboard players set @s right_click_check 0







