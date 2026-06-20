#战场人数比较-实时
execute store result score #system pvp_atk_count run execute if entity @a[team=attack]
execute store result score #system pvp_def_count run execute if entity @a[team=defence]
execute if score #system pvp_atk_count > #system pvp_def_count run function pld:pvp/player_operation_a
execute if score #system pvp_atk_count < #system pvp_def_count run function pld:pvp/player_operation_d
execute if score #system pvp_atk_count = #system pvp_def_count run scoreboard players set #system pvp_pl_stat 0
#死亡检查与事件判定
execute as @a[scores={player_death=1..}] if entity @s[scores={inpvp=1,inpvp_area=1}] run function pld:pvp/2/player_death


#对于进入战场的玩家进行按钮检查
execute as @a[team=attack,scores={inpvp_area=1}] run function pld:pvp/2/ing/atk/up_check 
execute as @a[team=defence,scores={inpvp_area=1}] run function pld:pvp/2/ing/def/up_check

#击杀检查
execute as @a[team=attack,scores={pvp_kill_r=1..}] run function pld:pvp/2/ing/atk/kill_reward
execute as @a[team=defence,scores={pvp_kill_g=1..}] run function pld:pvp/2/ing/def/kill_reward
#悬赏
advancement grant @a[team=attack,scores={pvp_killc_r=3..}] only pld:system/pvp/rewarded
advancement grant @a[team=defence,scores={pvp_killc_g=3..}] only pld:system/pvp/rewarded

#被悬赏特效
execute as @a[advancements={pld:system/pvp/rewarded=true},scores={inpvp_area=1}] at @s run particle minecraft:enchant ^ ^2.2 ^-0.5 0 0 0 0 1 force @a

#砍树判定
execute if block 1857 102 -1780 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree1 1
execute if block 1849 102 -1797 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree2 1
execute if block 1871 102 -1790 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree3 1
execute if block 1885 102 -1803 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree4 1
execute if block 1890 102 -1784 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree5 1
execute if block 1866 102 -1809 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree6 1
execute if block 1855 102 -1824 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree7 1
execute if block 1883 102 -1817 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree8 1
execute if block 1894 102 -1820 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree9 1
execute if block 1878 102 -1829 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree10 1
execute if block 1859 102 -1840 minecraft:redstone_wall_torch[lit=false] run scoreboard players add #system pvp2_kill_tree11 1

#砍树中止
execute if block 1857 102 -1780 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree1 0
execute if block 1849 102 -1797 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree2 0
execute if block 1871 102 -1790 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree3 0
execute if block 1885 102 -1803 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree4 0
execute if block 1890 102 -1784 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree5 0
execute if block 1866 102 -1809 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree6 0
execute if block 1855 102 -1824 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree7 0
execute if block 1883 102 -1817 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree8 0
execute if block 1894 102 -1820 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree9 0
execute if block 1878 102 -1829 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree10 0
execute if block 1859 102 -1840 minecraft:redstone_wall_torch[lit=true] run scoreboard players set #system pvp2_kill_tree11 0

#砍树成功
execute if score #system pvp2_kill_tree1 matches 400 run function pld:pvp/2/ing/kill_tree/1
execute if score #system pvp2_kill_tree2 matches 400 run function pld:pvp/2/ing/kill_tree/2
execute if score #system pvp2_kill_tree3 matches 400 run function pld:pvp/2/ing/kill_tree/3
execute if score #system pvp2_kill_tree4 matches 400 run function pld:pvp/2/ing/kill_tree/4
execute if score #system pvp2_kill_tree5 matches 400 run function pld:pvp/2/ing/kill_tree/5
execute if score #system pvp2_kill_tree6 matches 400 run function pld:pvp/2/ing/kill_tree/6
execute if score #system pvp2_kill_tree7 matches 400 run function pld:pvp/2/ing/kill_tree/7
execute if score #system pvp2_kill_tree8 matches 400 run function pld:pvp/2/ing/kill_tree/8
execute if score #system pvp2_kill_tree9 matches 400 run function pld:pvp/2/ing/kill_tree/9
execute if score #system pvp2_kill_tree10 matches 400 run function pld:pvp/2/ing/kill_tree/10
execute if score #system pvp2_kill_tree11 matches 400 run function pld:pvp/2/ing/kill_tree/11


#战场随机道具
execute if score #system pvp2_spitem_tick matches 0.. run scoreboard players remove #system pvp2_spitem_tick 1
execute if score #system pvp2_spitem_tick matches 0 run function pld:pvp/2/ing/sp_item/roll_pos

execute as @a[nbt={Inventory:[{tag:{id:"panling:pvp2_sp_item1"}}]}] run function pld:pvp/2/ing/sp_item/use/1
execute as @a[nbt={Inventory:[{tag:{id:"panling:pvp2_sp_item2"}}]}] run function pld:pvp/2/ing/sp_item/use/2
execute as @a[nbt={Inventory:[{tag:{id:"panling:pvp2_sp_item3"}}]}] run function pld:pvp/2/ing/sp_item/use/3


