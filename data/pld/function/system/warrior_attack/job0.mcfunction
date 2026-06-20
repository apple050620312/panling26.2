# @e[tag=warrior_tag,limit=1] 被攻击对象

#tellraw @p[distance=..20] [{"selector":"@s"},{"text":":我攻击了!"}]
#tag @s add attacker
#execute as @e[tag=warrior_tag] at @s run tellraw @p[distance=..20] [{"selector":"@s"},{"text":":我被近战攻击了！攻击者是"},{"selector":"@p[tag=attacker]"}]
#tag @s remove attacker


#后续处理
#获取玩家近战傷害值
execute store result score @s player_2atk run attribute @s attack_damage get 100

#本次玩家造成的傷害
scoreboard players operation #temp player_cause_1damage = @s player_cause_1damage
scoreboard players operation #temp player_cause_1damage = @s attack_damage1

#接口
function #pld:warrior/when_hurt_entity

#横扫
#攻击力传参
scoreboard players operation #temp player_cause_2damage = @s player_2atk 
scoreboard players operation #temp player_cause_2damage = attack_damage float2
execute unless score @s attack_scool_down_tick matches 1.. unless score @s sweep_cool matches 1.. unless score @s sprinting matches 1.. if entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{can_sweep:1}}}}] run function pld:system/warrior_attack/sweep/main

#重置
scoreboard players set @s sprinting 0
scoreboard players reset @s player_cause_1damage