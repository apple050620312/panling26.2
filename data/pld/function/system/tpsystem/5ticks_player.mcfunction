execute if score @s using_tpstone matches 1.. if score @s tp_cool_tick matches -1 if score @s tp_tick matches -1 if score @s feather_mainland matches 1 as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:tp_stone"}}}}] run function pld:system/tpsystem/using_stone_check
execute if score @s tp_tick matches 0.. if score @s tp_cool_tick matches -1 if score @s feather_mainland matches 1 run scoreboard players remove @s tp_tick 1
execute if score @s feather_mainland matches -1 if score @s tp_cool_tick matches -1 if score @s tp_tick matches 0.. run scoreboard players set @s tp_tick -1
execute if score @s tp_tick matches 0 if score @s tp_cool_tick matches -1 if score @s feather_mainland matches 1 if score @s moving matches 0 if score @s moving2 matches 0 if score @s moving3 matches 0 run function pld:system/tpsystem/tp_allow
execute if score @s moving matches 1.. if score @s tp_cool_tick matches -1 if score @s tp_tick matches 0.. if score @s feather_mainland matches 1 run function pld:system/tpsystem/tp_resis
execute if score @s moving2 matches 1.. if score @s tp_cool_tick matches -1 if score @s tp_tick matches 0.. if score @s feather_mainland matches 1 run function pld:system/tpsystem/tp_resis

#冷却tick
execute if score @s tp_cool_tick matches 0.. run scoreboard players remove @s tp_cool_tick 1
#冷却完毕
execute if score @s tp_cool_tick matches 0 run tellraw @s {"translate":"pl.info.tp_mirror_cooldown"}
#冷却中
execute if score @s tp_cool_tick matches 0.. if score @s using_tpstone matches 1.. run function pld:system/tpsystem/cooling

#大陆外
execute if score @s feather_mainland matches -1 if score @s tp_cool_tick matches -1 if score @s using_tpstone matches 1.. run tellraw @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:tp_stone"}}}}] {"translate":"pl.info.tp_mirror_resis3"}

#重置使用记分板
scoreboard players set @s using_tpstone 0

execute if entity @s[x=515,y=40,z=12,distance=..5,scores={tp_east1=0}] as @s[x=515,y=40,z=12,distance=..5,scores={tp_east1=0}] run function pld:system/tpsystem/pos_enable/east1
execute if entity @s[x=617,y=11,z=-137,distance=..15,scores={tp_east2=0}] as @s[x=617,y=11,z=-137,distance=..15,scores={tp_east2=0}] run function pld:system/tpsystem/pos_enable/east2
execute if entity @s[x=689,y=70,z=117,distance=..5,scores={tp_east3=0}] as @s[x=689,y=70,z=117,distance=..5,scores={tp_east3=0}] run function pld:system/tpsystem/pos_enable/east3

execute if entity @s[x=-398,y=115,z=141,distance=..25,scores={tp_west1=0}] as @s[x=-398,y=115,z=141,distance=..25,scores={tp_west1=0}] run function pld:system/tpsystem/pos_enable/west1
execute if entity @s[x=-677,y=108,z=-637,distance=..25,scores={tp_west2=0}] as @s[x=-677,y=108,z=-637,distance=..25,scores={tp_west2=0}] run function pld:system/tpsystem/pos_enable/west2
execute if entity @s[x=-202,y=67,z=-180,distance=..20,scores={tp_west3=0}] as @s[x=-202,y=67,z=-180,distance=..20,scores={tp_west3=0}] run function pld:system/tpsystem/pos_enable/west3

execute if entity @s[x=-319,y=58,z=584,distance=..5,scores={tp_south1=0}] as @s[x=-319,y=58,z=584,distance=..5,scores={tp_south1=0}] run function pld:system/tpsystem/pos_enable/south1
execute if entity @s[x=-297,y=11,z=800,distance=..5,scores={tp_south2=0}] as @s[x=-297,y=11,z=800,distance=..5,scores={tp_south2=0}] run function pld:system/tpsystem/pos_enable/south2
execute if entity @s[x=-21,y=46,z=827,distance=..30,scores={tp_south3=0}] as @s[x=-21,y=46,z=827,distance=..30,scores={tp_south3=0}] run function pld:system/tpsystem/pos_enable/south3

execute if entity @s[x=-279,y=24,z=-676,distance=..10,scores={tp_north1=0}] as @s[x=-279,y=24,z=-676,distance=..10,scores={tp_north1=0}] run function pld:system/tpsystem/pos_enable/north1
execute if entity @s[x=-283,y=27,z=-641,distance=..10,scores={tp_north1=0}] as @s[x=-283,y=27,z=-641,distance=..10,scores={tp_north1=0}] run function pld:system/tpsystem/pos_enable/north1

execute if entity @s[x=-25,y=47,z=-913,distance=..15,scores={tp_north2=0}] as @s[x=-25,y=47,z=-913,distance=..15,scores={tp_north2=0}] run function pld:system/tpsystem/pos_enable/north2
execute if entity @s[x=420,y=35,z=-646,dx=-5,dy=2,dz=-3,scores={tp_north3=0}] as @s[x=417,y=35,z=-643,distance=..5,scores={tp_north3=0}] run function pld:system/tpsystem/pos_enable/north3


execute as @s[scores={dragon_check=1,bird_check=1,tiger_check=1,turtle_check=1,tp_east1=1,tp_east2=1,tp_east3=1,tp_west1=1,tp_west2=1,tp_west3=1,tp_south1=1,tp_south2=1,tp_south3=1,tp_north1=1,tp_north2=1,tp_north3=1}] run advancement grant @s only pld:other/tp_stone_all_unlock
